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
        public Dictionary<string, string> pDic = new Dictionary<string, string>();
        public List<string> imgList = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               int pid =  int.Parse(Request.QueryString["id"]);
               DataTable dt = com.products.getProductsDetailByID(pid.ToString());
                foreach (DataRow row in dt.Rows)
                {
                    foreach (DataColumn dc in dt.Columns)
                    {
                        pDic[dc.ColumnName] = row[dc.ColumnName].ToString();
                    }
                }
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