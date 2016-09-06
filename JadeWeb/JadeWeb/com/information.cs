using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace JadeWeb.com
{
    public class information
    {
        private string _type;
        public information(string type)
        {
            _type = type;
        }
        public int addNews(string title, string subtitle, string photo, string content)
        {
            string strSql = string.Format(@"INSERT INTO [News] ([type],[subtitle],[content],created,photo,title,deleted)
                                            VALUES (@type,@subtitle,@content,getdate(),@photo,@title,0)");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("type", _type),new SqlParameter ("title",title),
                new SqlParameter ("content",content),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql, sp);
        }
        public DataTable getNewsList(string currentIndex, string pageCount,string title)
        {
            string where = "";
            if (!string.IsNullOrEmpty(_type))
            {
                  where += "  and type='" + _type + "' ";
            }
            if (!string .IsNullOrEmpty(title))
            {
                where += " and title like '%"+title+"%'";
            }
            string strSql = string.Format(@" select top {0} * from (
                                 select ROW_NUMBER() OVER(order by id desc) rowIndex , id, type,  title, subtitle, photo, content, created, deleted from News
                                where deleted=0 " + where + @"
                                )t where rowIndex > {0} * ({1}-1)", pageCount, currentIndex);
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }
        public int updateNews(string id, string title, string subtitle, string photo, string content)
        {
            string strSql = string.Format(@"update News set subtitle=@subtitle,title=@title,photo=@photo,content=@content where id=@id and type='"+ _type + "'");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("id",id),new SqlParameter ("title",title),
                new SqlParameter ("content",content),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql, sp);
        }
        public string getNewsCount(string title)
        {
            string where = string.Empty;
            if (!string.IsNullOrEmpty(title))
            {
                where += " and title like '%" + title + "%'";
            }
            string strSql = " select COUNT(*) from News where  deleted=0 and type='" + _type + "' "+ where + "";
            SQLServerOperating s = new SQLServerOperating();
            return s.Select(strSql);
        }

        public int deleteNewsById(string id)
        {
            string strSql = "update News set deleted = 1 where id=" + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql);
        }
        public DataTable getNewsDetailById(string id)
        {
            string strSql = "select id, type, title, subtitle, photo, content, created, deleted from News where deleted = 0 and id=" + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }


        public int setVideos(string content)
        {
            SQLServerOperating s = new SQLServerOperating();
            string count = s.Select("select count(*) from news where type='videos'");
            string strSql = "";
            if (Convert.ToInt32(count) > 0)
            {
                strSql = "update News set content=@content where type='videos'";
                return  s.ExecuteSql(strSql, new SqlParameter[] { new SqlParameter("content", content) });
            }
            else
            {
                strSql = "insert into news ( type,   content, created)values('videos',@content,getdate())";
                return s.ExecuteSql(strSql, new SqlParameter[] { new SqlParameter("content", content) });
            }
        }

        public DataTable getVideos()
        {
            string strSql = "select content from news where type='videos'";
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }
    }
}