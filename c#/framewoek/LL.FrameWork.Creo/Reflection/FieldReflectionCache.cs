﻿using System;
using System.Reflection;

using Castle.DynamicProxy;
using Castle.DynamicProxy.Generators;
using Castle.DynamicProxy.Generators.Emitters;
using Castle.DynamicProxy.Generators.Emitters.SimpleAST;

namespace LL.FrameWork.Core.Reflection
{
    public class FieldAccessor : IFieldAccessor
    {
        private IFieldAccessor fieldaccessor;
        public FieldAccessor() { }
        public FieldAccessor(ProxyGenerator generator, FieldInfo fi)
        {
            fieldaccessor = (IFieldAccessor)Activator.CreateInstance(CreateType(generator, fi));
        }
        public object Get(object Target)
        {
            return fieldaccessor.Get(Target);
        }

        public void Set(object Target, object Value)
        {
            fieldaccessor.Set(Target, Value);
        }

        object IFieldAccessor.Get(object Target)
        {
            return this.Get(Target);
        }

        void IFieldAccessor.Set(object Target, object Value)
        {
            this.Set(Target, Value);
        }

        Type CreateType(ProxyGenerator Generator, FieldInfo field)
        {
            var type = field.DeclaringType;

            CacheKey key = new CacheKey(field, type, Type.EmptyTypes, null);
            var TPropAccessor = Generator.ProxyBuilder.ModuleScope.GetFromCache(key);
            if (TPropAccessor == null)
            {
                ClassEmitter classemit = new ClassEmitter(Generator.ProxyBuilder.ModuleScope, ReflectionHelp.GetMemberSignName(field), null, new Type[] { typeof(IFieldAccessor) });

                var getemit = classemit.CreateMethod("Get", ReflectionHelp.DefaultMethodAttributes, ReflectionHelp.ObjectType, new Type[] { ReflectionHelp.ObjectType });
                getemit.CodeBuilder.AddStatement(new ExpressionStatement(
                    new ConvertExpression(type, ReflectionHelp.ObjectType, getemit.Arguments[0].ToExpression())));
                getemit.CodeBuilder.AddStatement(new ReturnStatement(
                    new ConvertExpression(ReflectionHelp.ObjectType, field.FieldType, (new FieldReference(field) { OwnerReference = null }).ToExpression())));

                var setemit = classemit.CreateMethod("Set", ReflectionHelp.DefaultMethodAttributes, ReflectionHelp.VoidType, new Type[] { ReflectionHelp.ObjectType, ReflectionHelp.ObjectType });
                setemit.CodeBuilder.AddStatement(new ExpressionStatement(
                    new ConvertExpression(type, ReflectionHelp.ObjectType, setemit.Arguments[0].ToExpression())));
                setemit.CodeBuilder.AddStatement(new AssignStatement(
                    new FieldReference(field) { OwnerReference = null },
                    new ConvertExpression(field.FieldType, ReflectionHelp.ObjectType, setemit.Arguments[1].ToExpression())));
                setemit.CodeBuilder.AddStatement(new ReturnStatement());

                TPropAccessor = classemit.BuildType();
            }
            return TPropAccessor;
        }
    }

    public class FieldReflectionCache : FastReflectionCache<FieldInfo, IFieldAccessor>
    {
        protected override IFieldAccessor Create(FieldInfo key)
        {
            return FastReflectionFactory.FieldReflectionFactory.Create(key);
        }
    }
}
