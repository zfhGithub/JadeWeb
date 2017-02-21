using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class index : System.Web.UI.Page
    {
        public Dictionary<string, string> aboutusDic = new Dictionary<string, string>();
        public List<string> bannerList = new List<string>();
        public DataTable newPro = new DataTable();
        public DataTable hotPro = new DataTable();
        public DataTable modelList = new DataTable();
        public DataTable contactDt = new DataTable();
        public DataTable newsTop6 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            newPro = com.products.getProductsList("1","9","","","");
            hotPro = com.products.GetHotProducts("16");
            modelList = com.model.GetModelList();
            contactDt = com.aboutinfo.getAboutInfo();
            aboutusDic = com.settings.getAboutUsInfo();
            newsTop6 = new com.information("").getNewsList("1", "6", "");
            if (!string.IsNullOrEmpty(aboutusDic["BannerImages"]))
            {
                string[] banners = aboutusDic["BannerImages"].Split(';');
                for (int i = 0; i < banners.Length; i++)
                {
                    if (!string.IsNullOrEmpty(banners[i]))
                    {
                        bannerList.Add(banners[i]);
                    }
                } 
            }
        }
    }
}