using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using SqlOper;
using System.Web.Script.Serialization;

namespace JadeWeb.admin
{
    /// <summary>
    /// ajax 的摘要说明
    /// </summary>
    public class ajax : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request.Params["action"];
            HttpRequest req = context.Request;
            HttpResponse res = context.Response;
            int r = 0;
            switch (action)
            {
                #region 通用  
                case "kindeditor":
                    HttpPostedFile file = req.Files[0];
                    res.Write(Utils.UploadImage(file, req.QueryString["type"], context));
                    break;
                case "updatepassword":
                    string olepassword = req.Params["olepassword"];
                    string newpassword = req.Params["newpassword"];
                    res.Write(Utils.GetReulst("修改成功", "修改失败", com.settings.updatePassword(newpassword, olepassword), "true"));
                    break;
                #endregion

                #region 商品管理 
                case "addproduct":
                    string pname = req.Form["products_name"]; string price = req.Form["products_prict"]; string model = req.Form["product_model"];
                    string photo = req.Form["products_photo"]; string title = req.Form["products_subtitle"]; string describe = req.Form["products_describe"];
                    string images = req.Form["products_images"]; string number = req.Form["products_number"];
                    if (com.products.isNumberExists(number))
                    {
                        res.Write(Utils.GetReulst("", "编号已经存在.", -1));
                    }
                    else
                    {
                        r = com.products.addProduct(pname, price, model, photo, title, describe, images, number);
                        res.Write(Utils.GetReulst("添加成功.", "添加失败.", r, "true"));
                    }
                    break;
                case "productlist":
                    string currentIndex = req.Form["pageIndex"];
                    string pageCount = req.Form["pageSize"];
                    string name = req.Form["products_name"];
                    number = req.Form["products_number"];
                    model = req.Form["products_model"];
                    Dictionary<string, string> jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.products.getProductsList(currentIndex, pageCount, name, number, model)));
                    jsonDic.Add("count", com.products.getProductsCount(name, number, model));
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "getproductsdetailbyid":
                    string id = req.Form["product_id"];
                    res.Write(Utils.DataTableToJSON(com.products.getProductsDetailByID(id))); ;
                    break;
                case "updateproducts":
                    pname = req.Form["products_name"]; price = req.Form["products_prict"]; model = req.Form["product_model"];
                    photo = req.Form["products_photo"]; title = req.Form["products_subtitle"]; describe = req.Form["products_describe"];
                    images = req.Form["products_images"]; number = req.Form["products_number"];
                    id = req.Params["products_id"];
                    r = com.products.updateProducts(pname, price, model, photo, title, describe, images, number, id);
                    res.Write(Utils.GetReulst("修改成功.", "修改失败.", r, "true"));
                    break;
                #endregion
                #region 商品类型
                case "getmodellist":
                    name = req.Form["modellist_name"];  
                    res.Write(Utils.DataTableToJSON(com.model.GetModelList(name)));
                    break;
                    #endregion
            }
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}