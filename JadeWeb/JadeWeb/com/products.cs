﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using SqlOper; 

namespace JadeWeb.com
{
    public class products
    {
        public static int addProduct(string name, string price, string model, string photo, string title, string describe, string images, string number,string hot,string buyurl)
        {
            try
            {
                string[] img = images.Split(',');
                SqlParameter[] msp = new SqlParameter[]
                     {
                       new SqlParameter("name", name), new SqlParameter("describe", describe) ,
                       new SqlParameter("model", model), new SqlParameter("images", images),
                       new SqlParameter("price",price), new SqlParameter("photo",photo) ,
                       new SqlParameter("title",title),new SqlParameter("number",number),
                       new SqlParameter("hot",string.IsNullOrEmpty(hot) ? "0":hot),
                       new SqlParameter("buyurl",buyurl)
                     };
                string strSql = @"insert into products (name, number, model, title, price, photo, images, describe, created,hot,buyurl)
                            values (@name,@number,@model,@title,@price,@photo,@images,@describe,getdate(),@hot,@buyurl)";
                SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
                int count = s.ExecuteSql(strSql, msp);
                return count;
            }
            catch (Exception)
            {
                return -1;
            }
         
        }

        public static DataTable getProductsList(string currentIndex, string pageCount,string name,string number,string model)
        {
            string where = "";
            if (!string.IsNullOrEmpty( name))
            {
                where += " and p.name like '%"+name+"%' ";
            }
            if (!string.IsNullOrEmpty(number))
            {
                where += " and number like '%"+number+"%' ";
            }
            if (!string.IsNullOrEmpty(model))
            {
                where += " and m.id=" + model+" ";
            }
            string strSql = string.Format(@" select top {0} * from (
                                select  ROW_NUMBER() OVER(order by p.id desc) rowIndex ,p.id,p.name,p.number,title,price,photo,images,describe,p.created,m.name model,hot from products p inner join model m on m.id=p.model 
                                 where deleted=0  "+ where + @"
                              )t where rowIndex > {0} * ({1}-1)", pageCount, currentIndex);
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

        public static string getProductsCount( string name, string number, string model)
        {
            string where = "";
            if (!string.IsNullOrEmpty(name))
            {
                where += " and p.name like '%" + name + "%' ";
            }
            if (!string.IsNullOrEmpty(number))
            {
                where += " and number like '%" + number + "%' ";
            }
            if (!string.IsNullOrEmpty(model))
            {
                where += " and m.id=" + model + " ";
            }
            string strSql = "select count(p.id) from products p inner join model m on m.id=p.model where deleted=0 "+ where;
            SQLServerOperating s = new SQLServerOperating();
            return s.Select(strSql);
        }

        public static DataTable getProductsDetailByID(string id)
        {
            string strSql = @" select p.id,p.name,p.number,title,price,photo,images,describe,p.created,p.model,m.name modelname,hot,buyurl from products p inner join Model m on p.model=m.id
                              where deleted = 0 and p.id =  " + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

        public static int updateProducts(string name, string price, string model, string photo, string title, string describe, string images, string number,string hot,string buyurl, string id)
        {
            string strSql = @"update products set name=@name,number=@number,title=@title,price=@price,photo=@photo,images=@images,describe=@describe ,model=@model,hot=@hot,buyurl=@buyurl where id=@id and deleted=0";

            SqlParameter[] pars = new SqlParameter[] {
                   new SqlParameter("name", name), new SqlParameter("describe", describe) ,
                       new SqlParameter("model", model), new SqlParameter("images", images),
                       new SqlParameter("price",price), new SqlParameter("photo",photo) ,
                       new SqlParameter("title",title),new SqlParameter("number",number)
                       ,new SqlParameter ("id",id),new SqlParameter ("hot",string.IsNullOrEmpty( hot) ? "0": hot),
                       new SqlParameter("buyurl",buyurl)
            };
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql, pars);
        }

        public static bool isNumberExists(string number)
        {
            string strSql = " select count(id) from products where number ='" + number + "'";
            SQLServerOperating s = new SQLServerOperating();
            return Convert.ToInt32(s.Select(strSql)) > 0;
        }

        public static DataTable GetHotProducts(string count = "")
        {
            string top = "";
            if (string.Empty != count)
            {
                top = " top "+count;
            }
            string strSql = "select "+ top+" id, name, number, model, title, price, photo, images, describe, created,  hot  from products where deleted=0 and hot = 1 order by created desc";
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

        public static int DeletedProduct(string id)
        {
            if (string.Empty == id)
            {
                return -1;  
            }
            string strSql = "update products set deleted = 1 where id = @id";
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql,new SqlParameter[] { new  SqlParameter("id", id) })  ; 
        }
    }
}