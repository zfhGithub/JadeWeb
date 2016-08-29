using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

        public static int AddModel(string name)
        {
            string strSql = "insert into model values(@name,getdate())";
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql, new SqlParameter[] { new SqlParameter("name", name) });
        }

        public static int UpdateModel(string id, string name)
        {
            string strSql = " update model set name=@name where id=@id";
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql, new SqlParameter[] { new SqlParameter("id", id), new SqlParameter("name", name) });
        }

        public static string GetModelByID(string id) {
            string strSql = " select name from model where id="+id;
            SQLServerOperating s = new SQLServerOperating();
            return s.Select(strSql);
        }

        public static int DeleteModel(string id)
        {
            string strSql = " delete from model where id= "+id;
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql);
        }

        public static int ModelExists(string id)
        {
            string strSql = " select count(*) from products where model= " + id;
            SQLServerOperating s = new SQLServerOperating();
            return Convert.ToInt32(s.Select(strSql));
        }
    }
}