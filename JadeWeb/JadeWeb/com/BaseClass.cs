using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JadeWeb.com
{
    public class BaseClass: System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            //if (!MG_DAL.SessionOper.isLogin())
            //{
            //    BasePageUrl.PreviousUrl = Request.Url.AbsoluteUri;
            //    Response.Redirect("~/login.aspx?action=clearAbsoluteUri");
            //}
        }
    }
}