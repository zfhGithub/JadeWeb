using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class products : System.Web.UI.Page
    {
        public DataTable modelList = new DataTable();
        public DataTable productList = new DataTable();
        public int productListCount = 0;
        public DataTable hotList = new DataTable();
        public DataTable activityList = new DataTable();
        public string currentIndex = "1", pageCount = "12", modelid = ""; 
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
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                try
                {
                    modelid = int.Parse(Request.QueryString["id"]).ToString();
                }
                catch (Exception)
                {
                    modelid = "";
                }
            }
            activityList = new com.information("activity").getNewsList("1", "1", "");
            hotList = com.products.GetHotProducts("5");
            productList = com.products.getProductsList(currentIndex, pageCount, "", "", modelid);
            productListCount = Convert.ToInt32(com.products.getProductsCount("", "", modelid));
        }
    }
}