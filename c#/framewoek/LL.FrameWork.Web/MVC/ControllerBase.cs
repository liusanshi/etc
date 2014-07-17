﻿using System;
using System.Runtime.CompilerServices;
using System.Globalization;

using LL.Framework.Core.Async;
using System.Web;

namespace LL.Framework.Web.MVC
{
    /// <summary>
    /// 控制器基类
    /// </summary>
    public abstract class ControllerBase : IController
    {
        private readonly SingleEntryGate _executeWasCalledGate = new SingleEntryGate();
        private bool _validateRequest = true;
        private IActionInvoker _actionInvoker;
        private TempDataDictionary _tempDataDictionary;
        private ITempDataProvider _tempDataProvider;
        /// <summary>
        /// 控制器的上下文
        /// </summary>
        public ControllerContext ControllerContext
        {
            get;
            set;
        }
        /// <summary>
        /// 请求是否验证通过
        /// </summary>
        public bool ValidateRequest
        {
            get
            {
                return this._validateRequest;
            }
            set
            {
                this._validateRequest = value;
            }
        }
        /// <summary>
        /// 动作的调用者
        /// </summary>
        public IActionInvoker ActionInvoker
        {
            get
            {
                if (this._actionInvoker == null)
                {
                    this._actionInvoker = this.CreateActionInvoker();
                }
                return this._actionInvoker;
            }
            set
            {
                this._actionInvoker = value;
            }
        }
        /// <summary>
        /// 路由数据
        /// </summary>
        public Route RouteData
        {
            get
            {
                if (ControllerContext != null)
                {
                    return ControllerContext.RouteData;
                }
                return null;
            }
        }
        /// <summary>
        /// 临时数据
        /// </summary>
        public TempDataDictionary TempData
        {
            get
            {
                if (this._tempDataDictionary == null)
                {
                    this._tempDataDictionary = new TempDataDictionary();
                }
                return this._tempDataDictionary;
            }
            set
            {
                this._tempDataDictionary = value;
            }
        }
        /// <summary>
        /// 临时数据提供者
        /// </summary>
        public ITempDataProvider TempDataProvider
        {
            get
            {
                if (this._tempDataProvider == null)
                {
                    this._tempDataProvider = this.CreateTempDataProvider();
                }
                return this._tempDataProvider;
            }
            set
            {
                this._tempDataProvider = value;
            }
        }
        /// <summary>
        /// 创建动作的调用者
        /// </summary>
        /// <returns></returns>
        protected virtual IActionInvoker CreateActionInvoker()
        {
            return new ControllerActionInvoker();
        }
        /// <summary>
        /// 临时数据提供者
        /// </summary>
        /// <returns></returns>
        protected virtual ITempDataProvider CreateTempDataProvider()
        {
            return new SessionStateTempDataProvider();
        }
        /// <summary>
        /// 执行请求
        /// </summary>
        /// <param name="requestContext"></param>
        protected virtual void Execute(RequestContext requestContext)
        {
            if (requestContext == null)
            {
                throw new ArgumentNullException("requestContext");
            }
            this.VerifyExecuteCalledOnce();
            this.Initialize(requestContext);
            
            this.ExecuteCore();
        }

        /// <summary>
        /// 控制器执行的核心函数
        /// </summary>
        protected virtual void ExecuteCore()
        {
            this.PossiblyLoadTempData();
            try
            {
                string requiredString = this.RouteData.Action;
                if (!this.ActionInvoker.InvokeAction(ControllerContext, requiredString))
                {
                    throw new HttpException(404, string.Format(CultureInfo.CurrentCulture, "在控制器：{1}中没有找到公开的动作:{0}", new object[]
	                {
		                requiredString,
		                GetType().FullName
	                }));
                }
            }
            finally
            {
                this.PossiblySaveTempData();
            }
        }
        /// <summary>
        /// 初始化数据
        /// </summary>
        /// <param name="requestContext"></param>
        protected virtual void Initialize(RequestContext requestContext)
        {
            this.ControllerContext = new ControllerContext(requestContext, this);
        }
        /// <summary>
        /// 验证控制器当前实例只调用了一次
        /// </summary>
        internal void VerifyExecuteCalledOnce()
        {
            if (!this._executeWasCalledGate.TryEnter())
            {
                throw new InvalidOperationException("当前Controller已经执行过了");
            }
        }
        /// <summary>
        /// 尝试加载临时数据
        /// </summary>
        internal void PossiblyLoadTempData()
        {
            TempData.Load(ControllerContext, this.TempDataProvider);
        }
        /// <summary>
        /// 尝试保存临时数据
        /// </summary>
        internal void PossiblySaveTempData()
        {
            TempData.Save(ControllerContext, this.TempDataProvider);
        }
        void IController.Execute(RequestContext requestContext)
        {
            this.Execute(requestContext);
        }

        /// <summary>
        /// 释放资源
        /// </summary>
        public virtual void Dispose()
        {
            
        }
        /// <summary>
        /// 释放资源
        /// </summary>
        void IDisposable.Dispose()
        {
            this.Dispose();
        }

        #region Result 返回
        /// <summary>
        /// 重定向
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        protected internal virtual RedirectResult Redirect(string url)
        {
            if (string.IsNullOrEmpty(url))
            {
                throw new ArgumentException("不能为空或者null", "url");
            }
            return new RedirectResult(url);
        }
        /// <summary>
        /// 永久重定向
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        protected internal virtual RedirectResult RedirectPermanent(string url)
        {
            if (string.IsNullOrEmpty(url))
            {
                throw new ArgumentException("不能为空或者null", "url");
            }
            return new RedirectResult(url, true);
        }
        /// <summary>
        /// 呈现模板
        /// </summary>
        /// <param name="virtualPath"></param>
        /// <returns></returns>
        protected internal TemplateViewResult View(string virtualPath)
        {
            return View(virtualPath, null);
        }
        /// <summary>
        /// 呈现模板
        /// </summary>
        /// <param name="virtualPath">文件路径</param>
        /// <param name="model"></param>
        /// <returns></returns>
        protected internal TemplateViewResult View(string virtualPath, object model)
        {
            if (string.IsNullOrEmpty(virtualPath))
            {
                throw new ArgumentException("不能为空或者null", "virtualPath");
            }
            return new TemplateViewResult(virtualPath, TempData, model);
        }

        /// <summary>
        /// 呈现有缓存功能的模板
        /// </summary>
        /// <param name="virtualPath"></param>
        /// <returns></returns>
        protected internal CacheTemplateViewResult CacheView(string virtualPath)
        {
            return CacheView(virtualPath, null);
        }
        /// <summary>
        /// 呈现有缓存功能的模板
        /// </summary>
        /// <param name="virtualPath">文件路径</param>
        /// <param name="getModel"></param>
        /// <returns></returns>
        protected internal CacheTemplateViewResult CacheView(string virtualPath, Func<object> getModel)
        {
            if (string.IsNullOrEmpty(virtualPath))
            {
                throw new ArgumentException("不能为空或者null", "virtualPath");
            }
            return new CacheTemplateViewResult(virtualPath, getModel);
        }

        /// <summary>
        /// 输出xml 数据
        /// </summary>
        /// <param name="model"></param>
        /// <param name="requestBehavior"></param>
        /// <returns></returns>
        protected internal XmlResult XML(object model, DataRequestBehavior requestBehavior )
        {
            if (model == null)
            {
                throw new ArgumentException("不能为空或者null", "model");
            }
            return new XmlResult(model, requestBehavior);
        }
        /// <summary>
        /// 输出xml 数据
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        protected internal XmlResult XML(object model)
        {
            return new XmlResult(model);
        }
        /// <summary>
        /// 输出json 数据
        /// </summary>
        /// <param name="model"></param>
        /// <param name="requestBehavior"></param>
        /// <returns></returns>
        protected internal JsonResult Json(object model, DataRequestBehavior requestBehavior)
        {
            if (model == null)
            {
                throw new ArgumentException("不能为空或者null", "model");
            }
            return new JsonResult(model, requestBehavior);
        }
        /// <summary>
        /// 输出json 数据
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        protected internal JsonResult Json(object model)
        {
            return new JsonResult(model);
        }
        /// <summary>
        /// 返回 404
        /// </summary>
        /// <returns></returns>
        protected internal virtual HttpNotFoundResult HttpNotFound()
        {
            return new HttpNotFoundResult();
        }
        /// <summary>
        /// 返回 404
        /// </summary>
        /// <param name="statusDescription"></param>
        /// <returns></returns>
        protected internal virtual HttpNotFoundResult HttpNotFound(string statusDescription)
        {
            return new HttpNotFoundResult(statusDescription);
        }
        /// <summary>
        /// 返回 js 字符串
        /// </summary>
        /// <param name="script"></param>
        /// <returns></returns>
        protected internal virtual JavaScriptResult JavaScript(string script)
        {
            return new JavaScriptResult
            {
                Script = script
            };
        }
        #endregion
    }
}
