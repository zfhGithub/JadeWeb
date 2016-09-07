using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb.admin.settings
{
    public partial class banner : System.Web.UI.Page
    {
        public Dictionary<string, string> aboutusDic = new Dictionary<string, string>();
        public List<string> bannerList = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            aboutusDic = com.settings.getAboutUsInfo();
            if (!string.IsNullOrEmpty(aboutusDic["BannerImages"]))
            {
                string[] banners = aboutusDic["BannerImages"].Split(';');
                for (int i = 0; i < banners.Length; i++)
                {
                    bannerList.Add(banners[i]);
                }
            }
        }
    }
}