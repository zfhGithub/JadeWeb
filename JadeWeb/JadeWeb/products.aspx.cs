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
        protected void Page_Load(object sender, EventArgs e)
        {
            modelList = com.model.GetModelList();
        }
    }
}