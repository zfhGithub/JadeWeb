using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;

namespace JadeWeb.admin
{
    /// <summary>
    /// ajax 的摘要说明
    /// </summary>
    public class ajax : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request.Params["action"];
            HttpRequest req = context.Request;
            HttpResponse res = context.Response;
             
            switch (action)
            {
                #region 通用
                case "updatepassword":
                    string olepassword = req.Params["olepassword"];
                    string newpassword = req.Params["newpassword"];
                    res.Write(Utils.GetReulst(200, "修改成功", "修改失败", com.settings.updatePassword(newpassword, olepassword),"true"));
                    break;
                #endregion

                case "productlist":
                    context.Response.Write("");
                    break;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}