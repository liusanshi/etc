if (typeof Object.create !== 'function') {
  // Production steps of ECMA-262, Edition 5, 15.2.3.5
  // Reference: http://es5.github.io/#x15.2.3.5
  Object.create = (function() {
    //为了节省内存，使用一个共享的构造器
    function Temp() {}

    // 使用 Object.prototype.hasOwnProperty 更安全的引用 
    var hasOwn = Object.prototype.hasOwnProperty;

    return function (O) {
      // 1. 如果 O 不是 Object 或 null，抛出一个 TypeError 异常。
      if (typeof O !== 'object') {
        throw TypeError('Object prototype may only be an Object or null');
      }

      // 2. 使创建的一个新的对象为 obj ，就和通过
      //    new Object() 表达式创建一个新对象一样，
      //    Object是标准内置的构造器名
      // 3. 设置 obj 的内部属性 [[Prototype]] 为 O。
      Temp.prototype = O;
      var obj = new Temp();
      Temp.prototype = null; // 不要保持一个 O 的杂散引用（a stray reference）...

      // 4. 如果存在参数 Properties ，而不是 undefined ，
      //    那么就把参数的自身属性添加到 obj 上，就像调用
      //    携带obj ，Properties两个参数的标准内置函数
      //    Object.defineProperties() 一样。
      if (arguments.length > 1) {
        // Object.defineProperties does ToObject on its first argument.
        var Properties = Object(arguments[1]);
        for (var prop in Properties) {
          if (hasOwn.call(Properties, prop)) {
            obj[prop] = Properties[prop];
          }
        }
      }

      // 5. 返回 obj
      return obj;
    };
  })();
}

/**
 * 代理
 * @param object obj     
 * @param object handler 
 * {
 *     apply : function(target, thisArg, args){},
 *     get   : function(target, property, receiver){},
 *     set   : function(target, property, value, receiver){}
 * }
 */
function ObjectProxy(obj, handler) {
    var proxy = Object.create(obj);
    init(proxy, obj, handler);
    return proxy;
}
function init(newobj, oldobj, handler){
    var item, hasapply = !!handler.apply, hasget = !!handler.get, hasset = !!handler.set;
    for(var i in oldobj){
        if(oldobj.hasOwnProperty(i)){
            item = oldobj[i];
            if(isFunction(item)){
                hasapply && (newobj[i] = (function(func, name){
                    return function(){
                        return handler.apply(func, newobj, arguments, name, oldobj);
                    }
                })(item, i));
            } else {
                if(hasget && hasset){
                    (function(key){
                        Object.defineProperty(newobj, key, { 
                            get : function(){ return handler.get(oldobj, key, newobj) }, 
                            set : function(nval){ handler.set(oldobj, key, nval, newobj)  } 
                        });
                    })(i);
                } else if(hasget){
                    (function(key){
                        Object.defineProperty(newobj, key, { 
                            get : function(){ return handler.get(oldobj, key, newobj) }
                        });
                    })(i);
                } else if(hasset){
                    (function(key){
                        Object.defineProperty(newobj, key, { 
                            set : function(nval){ handler.set(oldobj, key, nval, newobj)  } 
                        });
                    })(i);
                }
            }
        }
    }
}

function isFunction(val){
    return Object.prototype.toString.call(val) === '[object Function]';
}
//标识
function Identity(){
    this.pre = '__id__';
    this.id = this.pre + (+new Date) + (Identity.uid++);
}
Identity.prototype.getIdentity = Identity.prototype.toString = Identity.prototype.valueOf = function(){
    return this.id;
};
Identity.uid = 0;

//调用描述
function Invocation(proxy, context, handler){
    this.proxy = proxy;
    this.context = context;
    this.handler = handler;
    this.desc = '';
}
//执行
Invocation.prototype.procced = function() {
    this.result = this.handler.apply(this.context, this.args);
    return this.result;
};
//设置参数
Invocation.prototype.setArgs = function(args) {
    this.args = args;
};

var FunctionProxy = (function(){
    //函数调用代理
    function InvokeProxy(invocation){
        this.invocation = invocation;
        this.list = [];
        this.state = 0;//0: 初始化之前，1: 初始化完成，2：开始执行before，3：执行原始函数，4：开始执行after，5：开始执行except， 6：执行完成
        this._index = -1;
        this._error = null;  //异常
    }
    //注册拦截函数
    InvokeProxy.prototype.register = function(param){
        /*{before, after, except, index, desc}*/
        if(this.state === 6){
            this.state = 0; //重置
        } else if(this.state !== 0){
            //在执行的过程中不能添加拦截函数
            throw new Error('function was running');
        }
        if(param.index !== null && isFinite(param.index)){
            param.index = parseFloat(param.index, 10);
        } else {
            param.index = 0;    
        }
        this.list.push(param);
        this.state = 0;
    };
    //重置状态
    InvokeProxy.prototype._reset = function(){
        if(this.state === 6){
            this.state = 1;
        }
    };
    //执行下一个拦截器 可重入
    InvokeProxy.prototype._next = function(){
        var step = 1;
        switch(this.state){
            case 0 : //初始化之前
                this.list.sort(function(a, b){ return b.index - a.index; });
                this.state = 1;//标识初始化完成
            case 1 : //初始化完成
                this._index = -1;
                step = 1;
                this.state = 2; //标识开始执行before
            // break;
            case 2 : //开始执行before
                if(!this._innernext(step, 'before')){
                    this.state = 3; //标识before执行结束
                } else{
                    break;        
                }            
            case 3 : //开始执行原始函数
                try{
                    this.invocation.procced();
                    this.state = 4;
                } catch(e){
                    this._error = e;
                    this._index = this.list.length;
                    this.state = 5;
                    this._next();
                    break;
                }
            case 4 : //开始执行after
                step = -1;
                if(!this._innernext(step, 'after')){
                    this.state = 6; //标识after执行结束
                }
            break;
            case 5 : //开始执行except
                step = -1;
                if(!this._innernext(step, 'except')){
                    this.state = 6; //标识except执行结束
                }
            break;
        }
    }
    //执行下一个拦截器
    InvokeProxy.prototype._innernext = function(step, method){
        this._index += step;
        var current = this.list[this._index], m, that = this;
        if(current){
            if(m = current[method]){
                this.invocation.desc = current.desc || '';
                m.call(this.invocation.context, this.invocation, function(){ that._next() }); //调用
                return true;
            } else {

                return this._innernext(step, method);
            }
        }
        return false;
    };
    //执行
    InvokeProxy.prototype.run = function(args){
        this.invocation.setArgs(args);
        this._reset();//重置状态
        this._next(); //开始执行
        return this.invocation.result;
    };
    //获取执行结果
    InvokeProxy.prototype.getResult = function(){
        return this.invocation.result;
    };

    //函数的代理
    function FunctionProxy(invocation){
        this.invokeproxy = new InvokeProxy(invocation);
        this.cb = {};
    }
    //设置执行描述
    FunctionProxy.prototype.setInvocation = function(invocation){
        this.invokeproxy.invocation = invocation;
    };
    //获取执行结果
    FunctionProxy.prototype.getResult = function(){
        return this.invokeproxy.getResult();
    };
    //执行
    FunctionProxy.prototype.run = function(args){
        this.invokeproxy.run(Array.prototype.slice.call(args || []));
        return this.invokeproxy.invocation.result;
    };
    //注册函数的拦截器
    FunctionProxy.prototype.register = function(param){
        this.invokeproxy.register(param);
    };
    //注册回调函数的拦截器
    FunctionProxy.prototype.register_args = function(posi/*参数所在的位置*/, param){
        var me = this, inproxy;
        if(!(inproxy = me.cb[posi])){
            inproxy = me.cb[posi] = new InvokeProxy();
            this.invokeproxy.register({before: function(invocation, next){
                    if(invocation.args[posi] && isFunction(invocation.args[posi])){
                        inproxy.invocation = new Invocation(me, me, invocation.args[posi]);
                        invocation.args[posi] = function(){
                            inproxy.run(arguments);
                        }
                    }
                    next();
                }, 
                index: -9007199254740991, //Number.MIN_SAFE_INTEGER,
                desc : 'system callback'
            });
        }
        inproxy.register(param);
    };
    //注册返回CallBack的拦截器
    FunctionProxy.prototype.register_cb = function(param){
        var after = param.after;
        param.after = function(invocation, next){
            var cb = new qv.zero.CallBack();
            invocation.result.add(function(ret){
                proxy(ret);
                cb.execute(ret);
            });
            invocation.result = cb;
            next();
        }
        this.invokeproxy.register(param);
    };
    //注册返回promise的拦截器
    FunctionProxy.prototype.register_promise = function(param){
        throw 'not support';
        // this.invokeproxy.register(before, after, except, index);
    };
    return FunctionProxy;
})();

//代理工厂
var ProxyFactory = (function(){
    var factory = {};
    return {
        get : function(types){
            var list = types.split('|'), handlers = {};
            if(list){
                list.forEach(function(type){
                    if(factory[type]){
                        handlers[type] = factory[type];
                    }
                });
            } else {
                throw RangeError('type is not fount');
            }
            return handlers;
        },
        set : function(type, proxy){
            factory[type] = proxy;
        }
    };
}());
//只代理方法
ProxyFactory.set('apply', function(getFuncProxy){
    return function(target, thisArg, args, name, receiver){
        var proxy = getFuncProxy(name);
        if(proxy){
            proxy.setInvocation(new Invocation(receiver, thisArg, target));
            return proxy.run(args);
        } else {
            return target.apply(thisArg, args);
        }
    }
});
//只代理属性
ProxyFactory.set('get', function(getFuncProxy){
    return function(target, property, receiver){
        var proxy = getFuncProxy(property);
        if(proxy){
            proxy.setInvocation(new Invocation(receiver, target, function(){ return target[property]; }));
            return proxy.run();
        } else {
            return target[property];
        }
    }
});
//代理方法与属性
ProxyFactory.set('set', function(getFuncProxy){
    return function(target, property, value, receiver){
        var proxy = getFuncProxy(property);
        if(proxy){
            proxy.setInvocation(new Invocation(receiver, target, function(){ return target[property] = value; }));
            proxy.run(value);
        } else {
            target[property] = value;
        }
    }
});
//对象装饰者
function ObjectDecorator(obj, handlers){
    this.interceptorList = {};
    var list = {}, getFuncProxy;
    if(handlers){
        getFuncProxy = (function (self){
            return function(key){
                return self.interceptorList[key];
            };
        })(this);

        for (var i in handlers) {
            list[i] = handlers[i](getFuncProxy);
        }
    }
    this.proxy = new ObjectProxy(obj, list);
}
//注册拦截器
ObjectDecorator.prototype.interception = function(key, before/*, after, except, index, desc*/){
    var len = arguments.length, param;
    if(len > 2){
        param = {
            'before' : before,
            'after' : arguments[2],
            'except' : arguments[3],
            'index' : arguments[4],
            'desc' : arguments[5] || ''
        };
    } else if(len === 2 && key && !isFunction(before)){
        param = before;
        param.desc = param.desc || '';
    } else {
        throw new Error('arguments error');
    }
    var interceptor = this.interceptorList[key] || (this.interceptorList[key] = new FunctionProxy());
    interceptor.register(param);
};
//注册拦截器
ObjectDecorator.prototype.interception_args = function(key, posi/*参数所在的位置*/, before/*, after, except, index, desc*/){
    var len = arguments.length, param;
    posi = +posi;
    if(len > 3){
        param = {
            'before' : before,
            'after' : arguments[2],
            'except' : arguments[3],
            'index' : arguments[4],
            'desc' : arguments[5] || ''
        };
    } else if(len === 3 && key && isFinite(posi) && !isFunction(before)){
        param = before;
        param.desc = param.desc || '';
    } else {
        throw new Error('arguments error');
    }
    var interceptor = this.interceptorList[key] || (this.interceptorList[key] = new FunctionProxy());
    interceptor.register_args(posi, param);
};
//注册拦截器
ObjectDecorator.prototype.interception_cb = function(key, proxy/*, except, index, desc*/){
    var len = arguments.length, param;
    if(len > 2){
        param = {
            'after' : proxy,
            'except' : arguments[2],
            'index' : arguments[3],
            'desc' : arguments[4] || ''
        };
    } else if(len === 2 && key && !isFunction(proxy) && proxy.after){
        param = proxy;
        param.desc = param.desc || '';
    } else {
        throw new Error('arguments error');
    }
    var interceptor = this.interceptorList[key] || (this.interceptorList[key] = new FunctionProxy());
    interceptor.register_cb(param);
};
ObjectDecorator.getObjectDecorator = function(obj, types){
    types = types || 'apply|get|set';
    var key = '__decortor__', cache = ObjectDecorator.cache || (ObjectDecorator.cache = {});
    if(obj[key]){
        if(!cache[obj[key]]){
            cache[obj[key]] = new ObjectDecorator(obj, /*默认的代理*/ProxyFactory.get(types));
        }
    } else {
        var id = new Identity();
        obj[key] = id.toString();
        cache[id] = new ObjectDecorator(obj, ProxyFactory.get(types));
    }
    return cache[obj[key]];
}

var Http = {
    send : function(data, cb){
        setTimeout(function(){
            console.log(data);
            cb && cb();
        }, 10);
    }
}

Http = ObjectDecorator.getObjectDecorator(Http).proxy;

var od = ObjectDecorator.getObjectDecorator(Http);

od.interception('send', function(inv, next){
        console.log('begin1');
        next();
    },
    function(inv, next){
        console.log('end1');
        next();
    },
    null, 1, 'wo de 1'
);

od.interception('send', function(inv, next){
        console.log('begin2');
        next();
    },
    function(inv, next){
        console.log('end2');
        next();
    },
    null, 2, 'wo de 2'
);

od.interception_args('send', 1, { before : function(inv, next){

    console.log('拦截1');
    next();

}, 
index : 2,
desc : 'callback1' });

od.interception_args('send', 1, { before : function(inv, next){

    console.log('拦截2');
    next();

},index : 1, desc : 'callback2' });