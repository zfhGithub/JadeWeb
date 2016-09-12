using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class single : System.Web.UI.Page
    {
        public Dictionary<string, string> aboutusDic = new Dictionary<string, string>();
        public Dictionary<string, string> pDic = new Dictionary<string, string>();
        public List<string> imgList = new List<string>();
        public DataTable hotList = new DataTable();
        public DataTable activityList = new DataTable();
        public DataTable modelList = new DataTable();
        public DataTable likeList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            aboutusDic = com.settings.getAboutUsInfo();
            modelList = com.model.GetModelList();
            try
            {
                activityList = new com.information("activity").getNewsList("1", "1", "");

                hotList = com.products.GetHotProducts("5");
                int pid = int.Parse(Request.QueryString["id"]);
                DataTable dt = com.products.getProductsDetailByID(pid.ToString());
                foreach (DataRow row in dt.Rows)
                {
                    foreach (DataColumn dc in dt.Columns)
                    {
                        pDic[dc.ColumnName] = row[dc.ColumnName].ToString();
                    }
                }
                likeList = com.products.getProductsList("1", "6", "", "", pDic["model"]);
                string[] imgs = pDic["images"].Split(';');
                for (int i = 0; i < imgs.Length; i++)
                {
                    if (!string.IsNullOrEmpty(imgs[i]))
                    {
                        imgList.Add(imgs[i]);
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("products.aspx");
            }
        }
    }
}