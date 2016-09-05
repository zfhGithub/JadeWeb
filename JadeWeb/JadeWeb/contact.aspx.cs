using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class contact : System.Web.UI.Page
    {
        public DataTable contactDt = new DataTable();
        public DataTable modelList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            modelList = com.model.GetModelList();
            contactDt = com.aboutinfo.getAboutInfo();
            if (Request.HttpMethod == "POST")
            {
                string name = Request.Form["name"];
                string phone = Request.Form["phone"];
                string email = Request.Form["email"];
                string message = Request.Form["message"];
                int s = com.message.addMessage(name, email, phone, message);
                if (s > 0)
                {
                    Response.Write("<script>alert('我们已经收到你的留言！');</script>");
                }
            }
        }
    }
}