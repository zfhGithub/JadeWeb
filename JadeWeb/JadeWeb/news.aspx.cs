﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JadeWeb
{
    public partial class news : System.Web.UI.Page
    {
        public DataTable newsList = new DataTable();
        public int newstListCount = 0;
        public string currentIndex = "1", pageCount = "12" , modelid="";
        protected void Page_Load(object sender, EventArgs e)
        {
           
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
            com.information infor = new com.information("news");
            newsList = infor.getNewsList(currentIndex, pageCount, "");
            newstListCount = Convert.ToInt32(infor.getNewsCount(""));
        }
    }
}