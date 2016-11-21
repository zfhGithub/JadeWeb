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
                case "setseo":
                    string seotitle = req.Form["txtTitle"];
                    string keywords = req.Form["txtKeywords"];
                    string description = req.Form["txtDescription"];
                    res.Write(Utils.GetReulst("设置成功.","设置失败",com.settings.setSeo(seotitle,keywords,description)));
                    break;
                case "getseo":
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    res.Write(js.Serialize(com.settings.getAboutUsInfo())); 
                    break;
                #endregion

                #region 关于我们
                case "getaboutinfo":
                    res.Write(Utils.DataTableToJSON(com.aboutinfo.getAboutInfo()));
                    break;
                case "setaboutus":
                    string aboutusText = req.Form["about_aboutus"];
                    int status = com.aboutinfo.setAboutInfo(aboutusText);
                    context.Response.Write(Utils.GetReulst("设置成功", "设置失败", status));
                    break; 
                case "setcontact":
                    status = com.aboutinfo.setContact(req.Form["cname"], req.Form["caddress"], req.Form["cemail"], req.Form["cphone"]);
                    context.Response.Write(Utils.GetReulst("设置成功", "设置失败", status));
                    break;
                #endregion

                #region 商品管理 
                case "addproduct":
                    string pname = req.Form["products_name"]; string price = req.Form["products_prict"]; string model = req.Form["product_model"];
                    string photo = req.Form["products_photo"]; string title = req.Form["products_subtitle"]; string describe = req.Form["products_describe"];
                    string images = req.Form["products_images"]; string number = req.Form["products_number"];string hot = req.Form["products_hot"];
                    string buyurl = req.Form["products_buyurl"];
                    if (com.products.isNumberExists(number))
                    {
                        res.Write(Utils.GetReulst("", "编号已经存在.", -1));
                    }
                    else
                    {
                        r = com.products.addProduct(pname, price, model, photo, title, describe, images, number, hot,buyurl);
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
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "getproductsdetailbyid":
                    string id = req.Form["product_id"];
                    res.Write(Utils.DataTableToJSON(com.products.getProductsDetailByID(id))); ;
                    break;
                case "updateproducts":
                    pname = req.Form["products_name"]; price = req.Form["products_prict"]; model = req.Form["product_model"];
                    photo = req.Form["products_photo"]; title = req.Form["products_subtitle"]; describe = req.Form["products_describe"];
                    images = req.Form["products_images"]; number = req.Form["products_number"]; hot = req.Form["products_hot"];
                    id = req.Params["products_id"]; buyurl = req.Form["products_buyurl"];
                    r = com.products.updateProducts(pname, price, model, photo, title, describe, images, number,hot, buyurl, id);
                    res.Write(Utils.GetReulst("修改成功.", "修改失败.", r, "true"));
                    break;
                case "deleteproducts":
                    id = req.Params["id"];
                  ;
                    res.Write(Utils.GetReulst("删除成功.", "删除失败.", com.products.DeletedProduct(id)));
                    break;
                #endregion
                #region 商品类型
                case "getmodellist":
                    name = req.Form["modellist_name"];  
                    res.Write(Utils.DataTableToJSON(com.model.GetModelList(name)));
                    break;
                case "addmodel":
                    name = req.Form["model_name"];
                    res.Write(Utils.GetReulst("添加成功.","添加失败.",com.model.AddModel(name),"true"));
                    break;
                case "updatemodel":
                    name = req.Form["model_name"];
                    id = req.Params["id"];
                    res.Write( Utils.GetReulst("修改成功.", "修改失败.", com.model.UpdateModel(id, name), "true"));
                    break;
                case "getmodelbyid":
                    id = req.Params["id"];
                    res.Write(com.model.GetModelByID(id));
                    break;
                case "deletemodel":
                    id = req.Params["id"];
                   int exists = com.model.ModelExists(id);
                    if (exists > 0) 
                        res.Write(Utils.GetReulst("", "删除失败,该型号已经被使用.",  -1)); 
                    else 
                        res.Write(Utils.GetReulst("删除成功.", "删除失败.", com.model.DeleteModel(id))); 
                    break;
                #endregion

                #region 资讯中心
                #region 玉器知识
                case "addknowledge":
                    string type = req.Params["type"];
                    com.information infor = new com.information(type);
                    status = infor.addNews(req.Form["knowledge_title"], req.Form["knowledge_subtitle"], req.Form["knowledge_photo"], req.Form["knowledge_content"]);
                    string reulst = Utils.GetReulst("添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updateknowledge":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.updateNews(req.Params["id"], req.Form["knowledge_title"], req.Form["knowledge_subtitle"], req.Form["knowledge_photo"], req.Form["knowledge_content"]);
                    reulst = Utils.GetReulst("修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "knowledgelist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    title = req.Form["title"];
                    type = req.Params["type"];
                    infor = new com.information(type);
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(infor.getNewsList(currentIndex, pageCount,title)));
                    jsonDic.Add("count", infor.getNewsCount(title));
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deleteknowledge":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(  "删除成功！", "删除失败！", infor.deleteNewsById(id)));
                    break;
                case "getknowledgedetailbyid":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(infor.getNewsDetailById(id)));
                    break;
                #endregion

                #region 新闻
                case "addnews":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.addNews(req.Form["news_title"], req.Form["news_subtitle"], req.Form["news_photo"], req.Form["news_content"]);
                    reulst = Utils.GetReulst("添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatenews":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.updateNews(req.Params["id"], req.Form["news_title"], req.Form["news_subtitle"], req.Form["news_photo"], req.Form["news_content"]);
                    reulst = Utils.GetReulst("修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "newslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    title = req.Form["title"];
                    type = req.Params["type"];
                    infor = new com.information(type);
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(infor.getNewsList(currentIndex, pageCount, title)));
                    jsonDic.Add("count", infor.getNewsCount(title));
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletenews":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst("删除成功！", "删除失败！", infor.deleteNewsById(id)));
                    break;
                case "getnewsdetailbyid":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(infor.getNewsDetailById(id)));
                    break;
                #endregion

                #region 宣传视频
                case "addvideos":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.addNews(req.Form["videos_title"], string.IsNullOrEmpty( req.Form["videos_subtitle"])?"": req.Form["videos_subtitle"], "", req.Form["videos_content"]);
                    reulst = Utils.GetReulst("添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatevideos":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.updateNews(req.Params["id"], req.Form["videos_title"], string.IsNullOrEmpty(req.Form["videos_subtitle"]) ? "" : req.Form["videos_subtitle"], "", req.Form["videos_content"]);
                    reulst = Utils.GetReulst("修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "videoslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    title = req.Form["title"];
                    type = req.Params["type"];
                    infor = new com.information(type);
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(infor.getNewsList(currentIndex, pageCount, title)));
                    jsonDic.Add("count", infor.getNewsCount(title));
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletevideos":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst("删除成功！", "删除失败！", infor.deleteNewsById(id)));
                    break;
                case "getvideosdetailbyid":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(infor.getNewsDetailById(id)));
                    break;
                #endregion

                #region 投资加盟
                case "addjoinin":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.addNews(req.Form["joinin_title"], req.Form["joinin_subtitle"], req.Form["joinin_photo"], req.Form["joinin_content"]);
                    reulst = Utils.GetReulst("添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatejoinin":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.updateNews(req.Params["id"], req.Form["joinin_title"], req.Form["joinin_subtitle"], req.Form["joinin_photo"], req.Form["joinin_content"]);
                    reulst = Utils.GetReulst("修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "joininlist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    title = req.Form["title"];
                    type = req.Params["type"];
                    infor = new com.information(type);
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(infor.getNewsList(currentIndex, pageCount, title)));
                    jsonDic.Add("count", infor.getNewsCount(title));
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletejoinin":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst("删除成功！", "删除失败！", infor.deleteNewsById(id)));
                    break;
                case "getjoinindetailbyid":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(infor.getNewsDetailById(id)));
                    break;
                #endregion

                #region 活动中心
                case "addactivity":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.addNews(req.Form["activity_title"], req.Form["activity_subtitle"], req.Form["activity_photo"], req.Form["activity_content"]);
                    reulst = Utils.GetReulst("添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updateactivity":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    status = infor.updateNews(req.Params["id"], req.Form["activity_title"], req.Form["activity_subtitle"], req.Form["activity_photo"], req.Form["activity_content"]);
                    reulst = Utils.GetReulst("修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "activitylist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    title = req.Form["title"];
                    type = req.Params["type"];
                    infor = new com.information(type);
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(infor.getNewsList(currentIndex, pageCount, title)));
                    jsonDic.Add("count", infor.getNewsCount(title));
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deleteactivity":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst("删除成功！", "删除失败！", infor.deleteNewsById(id)));
                    break;
                case "getactivitydetailbyid":
                    type = req.Params["type"];
                    infor = new com.information(type);
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(infor.getNewsDetailById(id)));
                    break;
                #endregion
                #endregion

                #region 留言管理

                case "messagelist":
                      currentIndex = req.Form["pageIndex"];
                      pageCount = req.Form["pageSize"];
                     jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.message.getMessageList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.message.getMessageListCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletemessage":
                      id = req.Params["pid"];
                    res.Write(Utils.GetReulst( "删除成功", "删除失败", com.message.deleteMessage(id)));
                    break;
                #endregion

                #region 设置
                case "getserviceqq":
                    js = new JavaScriptSerializer();
                    var json = js.Serialize(com.settings.getServices());
                    res.Write(json == "[\"\"]" ? "" : json);
                    break;
                case "addserviceqq":
                    string qq = req.Form["serviceQQ"];
                    name = req.Form["serviceName"];
                    res.Write(Utils.GetReulst( "保存成功", "保存失败", com.settings.addServices(qq, name)));
                    break;
                case "deleteserviceqq":
                    qq = req.Params["id"];
                    name = req.Params["name"];
                    res.Write(Utils.GetReulst( "删除成功", "删除失败", com.settings.deleteQQ(qq, name)));
                    break;
                case "addservicephone":
                    string phone = req.Form["txtPhone"];

                    res.Write(Utils.GetReulst("保存成功", "保存失败", com.settings.addServicesPhone(phone)));
                    break;
                case "getservicephone":
                    js = new JavaScriptSerializer();
                    json = js.Serialize(com.settings.getServicesPhones());
                    res.Write(json == "[\"\"]" ? "" : json);
                    break;
                case "deleteservicephone":
                    phone = req.Params["id"];
                    res.Write(Utils.GetReulst( "删除成功", "删除失败", com.settings.deletePhone(phone)));
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