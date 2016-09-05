using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class activity : System.Web.UI.Page
    {
        public DataTable activityList = new DataTable();
        public int activityListCount = 0;
        public string currentIndex = "1", pageCount = "20", modelid = "";
        public DataTable modelList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            com.information infor = new com.information("activity");
            activityList = infor.getNewsList(currentIndex, pageCount, "");
            activityListCount = Convert.ToInt32(infor.getNewsCount("")); 
        }
    }
}