using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class blog_single : System.Web.UI.Page
    {
        public Dictionary<string, string> aboutusDic = new Dictionary<string, string>();
        public Dictionary<string, string> detailNew = new Dictionary<string, string>();
        public DataTable modelList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            aboutusDic = com.settings.getAboutUsInfo();
            modelList = com.model.GetModelList();
            int id = 0;
            try
            {
               id = int.Parse(Request.QueryString["id"]);
                com.information infor = new com.information("");
                DataTable table = infor.getNewsDetailById(id.ToString());
                foreach (DataRow row in table.Rows)
                {
                    foreach (DataColumn dc in table.Columns)
                    {
                        detailNew[dc.ColumnName] = row[dc.ColumnName].ToString();
                    }
                }
            }
            catch  
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}