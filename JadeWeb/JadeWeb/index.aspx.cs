﻿using System;
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
        public DataTable newPro = new DataTable();
        public DataTable hotPro = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            newPro = com.products.getProductsList("1","9","","","");
            hotPro = com.products.GetHotProducts();
        }
    }
}