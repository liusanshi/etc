﻿using System;
using System.Text.RegularExpressions;

namespace LL.Framework.Web.MVC
{
    /// <summary>
    /// 响应AJAX请求的HttpHandlerFactory。它要求将所有Action放在一个以Ajax开头的类型中。
    /// </summary>
    public sealed class AjaxHandlerFactory : BaseMvcHandlerFactory
    {
        private static readonly Regex s_urlRegex
            = new Regex(@"/(?<name>(\w[\./\w]*)?(?=Ajax)\w+)[/\.](?<method>\w+)\.[a-zA-Z]+", RegexOptions.Compiled);

        /*
            可以解析以下格式的URL：（前三个表示包含命名空间的格式）
            注意：类名必须Ajax做为前缀

            /Fish.AA.AjaxTest/Add.cspx
            /Fish.BB.AjaxTest.Add.cspx
            /Fish/BB/AjaxTest/Add.cspx
            /AjaxDemo/GetMd5.cspx
            /AjaxDemo.GetMd5.cspx
        */

        /// <summary>
        /// 创建上下文请求
        /// </summary>
        /// <param name="context"></param>
        /// <param name="path"></param>
        /// <returns></returns>
        public override RequestContext CreateRequestContext(System.Web.HttpContext context, string path)
        {
            if (string.IsNullOrEmpty(path))
                throw new ArgumentNullException("path");

            Match match = s_urlRegex.Match(path);
            if (match.Success == false)
            {
                return new RequestContext(context);
            }
            else
            {
                return new RequestContext(context, 
                    CreateRouteData(match.Groups["name"].Value.Replace("/", "."), match.Groups["method"].Value));
            }
        }
    }
}
