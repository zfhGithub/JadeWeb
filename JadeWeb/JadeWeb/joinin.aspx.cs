using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class joinin : System.Web.UI.Page
    {
        public Dictionary<string, string> aboutusDic = new Dictionary<string, string>();
        public DataTable joinList = new DataTable();
        public int joinListCount = 0;
        public string currentIndex = "1", pageCount = "20", modelid = "";
        public DataTable modelList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            aboutusDic = com.settings.getAboutUsInfo();
            modelList = com.model.GetModelList();
            if (!string.IsNullOrEmpty(Request.QueryString["page"]))
            {
                try
                {
                    currentIndex = int.Parse(Request.QueryString["page"]).ToString();
                }
                catch (Exception)
                {
                    currentIndex = "1";
                }
            }
            com.information infor = new com.information("joinin");
            joinList = infor.getNewsList(currentIndex, pageCount, "");
            joinListCount = Convert.ToInt32(infor.getNewsCount(""));

        }
    }
}