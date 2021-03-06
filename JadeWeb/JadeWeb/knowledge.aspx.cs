﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class knowledge : System.Web.UI.Page
    {
        public Dictionary<string, string> aboutusDic = new Dictionary<string, string>();
        public DataTable newsList = new DataTable();
        public int newstListCount = 0;
        public string currentIndex = "1", pageCount = "12", modelid = "";
        public DataTable newsTop5 = new DataTable();
        public DataTable activityList = new DataTable();
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
            activityList = new com.information("activity").getNewsList("1", "1", "");
            newsTop5 = new com.information("").getNewsList("1", "5", "");
            com.information infor = new com.information("knowledge");
            newsList = infor.getNewsList(currentIndex, pageCount, "");
            newstListCount = Convert.ToInt32(infor.getNewsCount(""));
        }
    }
}