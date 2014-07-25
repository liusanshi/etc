﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using LL.Framework.Web.MVC;
using System.Web.Security;

namespace DocumentManagement.Controller
{
    [AllowAnonymous]
    public class LoginController : ControllerBase
    {
        [PageUrl("/Login.aspx")]
        public TemplateViewResult Login()
        {
            return View();
        }

        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        [PageUrl("/Login.aspx", "post")]
        public ActionResult Login(string username, string password)
        {
            if (username == "admin" && password == "admin")
            {
                FormsAuthentication.SetAuthCookie(username, true);
                return Redirect("/Default.aspx");//转到页面
            }
            else
            {
                ModelState.AddModelError("", "账号密码错误！");
            }
            return View();
        }
    }
}