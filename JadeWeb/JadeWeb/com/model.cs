using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace JadeWeb.com
{
    public class model
    {

        public static DataTable GetModelList(string modelname= null)
        {
            string where = "";
            if (!string.IsNullOrEmpty(modelname))
            {
                where += " where name like '%"+modelname+"%'";
            }
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            string strSql = "select ROW_NUMBER() over(order by id desc) rowIndex,id, name ,created from model " + where;
             return s.Selects(strSql);
        }
    }
}