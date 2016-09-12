using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class videos : System.Web.UI.Page
    {
        public Dictionary<string, string> aboutusDic = new Dictionary<string, string>();
        public DataTable videoList = new DataTable();
        public DataTable modelList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            aboutusDic = com.settings.getAboutUsInfo();
            modelList = com.model.GetModelList();
            com.information infor = new com.information("videos");
            videoList= infor.getNewsList("1","12",""); 
        }
    }
}