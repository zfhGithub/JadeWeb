<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JadeWeb.index" %>

<!DOCTYPE html>
<html>
<head>
<title><%=aboutusDic["SeoTitle"] %></title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://apps.bdimg.com/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<%= aboutusDic["SeoKeywords"] %>" />
<meta name="description" content="<%= aboutusDic["SeoDescription"] %>">

<!--fonts-->
<%--<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>--%>
    <!--//fonts-->
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>

           <link href="js/customerservice/customer-service.css" rel="stylesheet" />
    <link href="js/customerservice/lanren.css" rel="stylesheet" />
    <script src="js/customerservice/js.js"></script>
    <script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?85e3f6356b675612f50fbd0c87ff9e56";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

</head>
<body>
<!--header-->
<div class="header">
	<div class="header-top">
		<%--<div class="container">
			<div class="search">
					<form>
						<input type="text" value="Search " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
						<input type="submit" value="Go">
					</form>
			</div>
			<div class="header-left">		
					<ul>
						<li ><a href="login.aspx"  >Login</a></li>
						<li><a  href="register.aspx"  >Register</a></li>

					</ul>
					<div class="cart box_1">
						<a href="checkout.aspx">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							<img src="images/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

					</div>
					<div class="clearfix"> </div>
			</div>
				<div class="clearfix"> </div>
		</div>--%>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<a href="index.aspx"><img src="images/logo.png" alt=""></a>	 
				</div>
		  <div class=" h_menu4">
				<ul class="memenu skyblue">
					  <li class="active grid"><a class="color8" href="index.aspx">首页</a></li>	
				      <li><a class="color1" href="#">产品中心</a>
				      	<div class="mepanel">
						<div class="row">
                            <div class="col1">
								<div class="h_nav">
									<ul>
                            <%
                                int modelLeng = modelList.Rows.Count;
                                for (int i = 0; i < modelLeng; i=i+3)
                                {%>
                                    	<li><a href="products.aspx?id=<%= modelList.Rows[i]["id"] %>"><%= modelList.Rows[i]["name"] %></a></li>
                              <%  } 
                            %> 
						        	</ul>	
								</div>							
							</div>
                            	<div class="col1">
								    <div class="h_nav">
								    	<ul>
                               <%  for (int i = 1; i < modelLeng; i=i+3)
                                  {%>
                                       <li><a href="products.aspx?id=<%= modelList.Rows[i]["id"] %>"><%= modelList.Rows[i]["name"] %></a></li>
                                 <% } %>
							          </ul>	
								    </div>							
							    </div>
										<div class="col1">
								    <div class="h_nav">
								    	<ul>	 
								<% 
                                    for (int i = 2; i < modelLeng; i=i+3)
                                    {%>
                                      <li><a href="products.aspx?id=<%= modelList.Rows[i]["id"] %>"><%= modelList.Rows[i]["name"] %></a></li>
                                  <%  }
                                    %>
                                              </ul>	
								    </div>							
							    </div>
					 
						  </div>
						</div>
					</li>
				    <li class="grid"><a class="color2" href="#">资讯中心</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="knowledge.aspx">玉器文化</a></li>
										<li><a href="joinin.aspx">投资加盟</a></li> 
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="news.aspx">公司新闻</a></li>
										<li><a href="activity.aspx">平台活动</a></li> 
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav"> 
									<ul>
										<li><a href="videos.aspx">宣传视频</a></li> 
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
			    </li>
				<li><a class="color4" href="activity.aspx">活动中心</a></li>				
				<li><a class="color6" href="contact.aspx">关于我们</a></li>
			  </ul> 
			</div> 
				<div class="clearfix"> </div>
		</div>
		</div>

	</div>

    <div class="banner">
        <div class="container">
            <script src="js/responsiveslides.min.js"></script>
            <script>
                $(function () {
                    $("#slider").responsiveSlides({
                        auto: true,
                        nav: true,
                        speed: 500,
                        namespace: "callbacks",
                        pager: true,
                        before: function () {
                          
                        },
                        after: function () {
                            var src = $("#slider li.callbacks1_on img").attr("src");
                            $("div.banner").css({ "background": "url(" + src + ") no-repeat" }); 
                        }
                    });
                });
            </script>
            <div id="top" class="callbacks_container">
                <ul class="rslides" id="slider">
                    <% for (int i = 0; i < bannerList.Count; i++)
                        {
                            %>
                        <li>

                         <%--   <div class="banner-text">
                                <h3> Lorem Ipsum is not simply dummy  </h3>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor .</p>
                                <a href="single.aspx">Learn More</a>
                            </div>--%>
                            <img src="/images/banner/<%= bannerList[i] %>" style="display: none;"/>
                        </li>
                      <%
                        } %>
                  
                   
                </ul>
            </div>

        </div>
    </div>

<!--content-->
<div class="content">
        <div class="container">
            <div class="content-top">
                <h1>最新产品</h1>
             <div class="grid-in">
                    <% for (int i = 0; i < ( 3 > newPro.Rows.Count ? newPro.Rows.Count :3); i++)
                        { 
                            %>
                              <div class="col-md-4 grid-top">
                                <a href="single.aspx?id=<%= newPro.Rows[i]["id"] %>" class="b-link-stripe b-animate-go  thickbox" target="_blank">
                                    <img class="img-responsive" src="<%= newPro.Rows[i]["photo"] %>" alt="">
                                    <div class="b-wrapper">
                                        <h3 class="b-animate b-from-left b-delay03 ">
                                            <span>查看</span>
                                        </h3>
                                    </div>
                                </a> 
                                  <p><a href="single.aspx"><%= newPro.Rows[i]["number"] %></a></p>
                                <p><a href="single.aspx"><%= newPro.Rows[i]["name"] %></a></p>
                            </div>
                     <%   
                        } %> 
                 <div class="clearfix"></div>  
             </div>
             <div class="grid-in">
                 <% for (int i = 3; i < ( 6 > newPro.Rows.Count ? newPro.Rows.Count :6); i++)
                        {   %>
                              <div class="col-md-4 grid-top">
                                <a href="single.aspx?id=<%= newPro.Rows[i]["id"] %>" class="b-link-stripe b-animate-go  thickbox" target="_blank">
                                    <img class="img-responsive" src="<%= newPro.Rows[i]["photo"] %>" alt="">
                                    <div class="b-wrapper">
                                        <h3 class="b-animate b-from-left b-delay03 ">
                                            <span>查看</span>
                                        </h3>
                                    </div>
                                </a> 
                                  <p><a href="single.aspx"><%= newPro.Rows[i]["number"] %></a></p>
                                <p><a href="single.aspx"><%= newPro.Rows[i]["name"] %></a></p>
                            </div>
                     <%   
                        } %> 
                 <div class="clearfix"></div>
               </div>
                    <div class="grid-in">
                 <% for (int i = 6; i < ( 9 > newPro.Rows.Count ? newPro.Rows.Count :9); i++)
                        {   %>
                              <div class="col-md-4 grid-top">
                                <a href="single.aspx?id=<%= newPro.Rows[i]["id"] %>" class="b-link-stripe b-animate-go  thickbox" target="_blank">
                                    <img class="img-responsive" src="<%= newPro.Rows[i]["photo"] %>" alt="">
                                    <div class="b-wrapper">
                                        <h3 class="b-animate b-from-left b-delay03 ">
                                            <span>查看</span>
                                        </h3>
                                    </div>
                                </a> 
                                  <p><a href="single.aspx"><%= newPro.Rows[i]["number"] %></a></p>
                                <p><a href="single.aspx"><%= newPro.Rows[i]["name"] %></a></p>
                            </div>
                     <%   
                        } %> 
                 <div class="clearfix"></div>
               </div>
            </div>
            <!----->
           <div class="clearfix"></div>
            <div class="content-top-bottom">
                <h2>热卖产品</h2>
               <%-- <div class="col-md-6 men">
                    <a href="single.aspx" class="b-link-stripe b-animate-go  thickbox">
                        <img class="img-responsive" src="images/t1.jpg" alt="">
                        <div class="b-wrapper">
                            <h3 class="b-animate b-from-top top-in   b-delay03 ">
                                <span>Lorem</span>
                            </h3>
                        </div>
                    </a> 
                </div>--%>
             
         <% int count = hotPro.Rows.Count;
            double frequency =  Math.Ceiling(Convert.ToDouble(Convert.ToDouble(count) / Convert.ToDouble(3)));
            %>
                <% for (int i = 0; i < frequency; i++)
                    {
                        int len = (i * 3 + 3) > count ? count : (i * 3 + 3);
                        %> <div class="col-md-6"><%
                        for (int j = i * 3; j < len; j++)
                        {
                            %>
                            <% if (j < count)
                                {%>
                                <div class="col-md1 ">
                                    <a href="single.aspx?id=<%= hotPro.Rows[j]["id"] %>" target="_blank" class="b-link-stripe b-animate-go  thickbox">
                                        <img class="img-responsive" style="width: 600px; height: 226px;" src="<%= hotPro.Rows[j]["photo"] %>" alt="">
                                        <div class="b-wrapper">
                                            <h3 class="b-animate b-from-top top-in1   b-delay03 ">
                                                <span><%= hotPro.Rows[j]["name"] %></span>
                                            </h3>
                                        </div>
                                    </a>
                                </div><%} %>
                         
                                <div class="col-md2"> 
                                       <% j++; if (j < count)
                                           {%>
                                    <div class="col-md-6 men1">
                                        <a href="single.aspx?id=<%= hotPro.Rows[j]["id"] %>" target="_blank" class="b-link-stripe b-animate-go  thickbox">
                                            <img class="img-responsive" src="<%= hotPro.Rows[j]["photo"] %>" alt="">
                                            <div class="b-wrapper">
                                                <h3 class="b-animate b-from-top top-in2   b-delay03 ">
                                                    <span><%= hotPro.Rows[j]["name"] %></span>
                                                </h3>
                                            </div>
                                        </a> 
                                    </div>
                                    <%} %>
                                       <% j++; if (j < count)
                                           {%>
                                    <div class="col-md-6 men2">
                                        <a href="single.aspx?id=<%= hotPro.Rows[j]["id"] %>" target="_blank" class="b-link-stripe b-animate-go  thickbox">
                                            <img class="img-responsive" src="<%= hotPro.Rows[j]["photo"] %>" alt="">
                                            <div class="b-wrapper">
                                                <h3 class="b-animate b-from-top top-in2   b-delay03 ">
                                                    <span><%= hotPro.Rows[j]["name"] %></span>
                                                </h3>
                                            </div>
                                        </a> 
                                    </div>
                                        <%} %>
                                    <div class="clearfix"></div>
                                </div>
                            <%
                        }
                        %>
                    <div class="clearfix"></div>
                               </div>
                   <% } %>
                
                 
            </div>
            <div class="clearfix"></div>
              <div class="content-top">
                <h1>最新资讯</h1> 
                    <div class="grid-in">
                        <div class=" bottom-product">
                            <%
                                for (int i = 0; i < newsTop6.Rows.Count; i++)
                                {%>
                                  <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                                    <div class="product-at ">
                                        <a href="blog_single.aspx?id=<%= newsTop6.Rows[i]["id"] %>" target="_blank">
                                            <img class="img-responsive" src="<%=newsTop6.Rows[i]["photo"]  %>" alt="">
                                            <div class="pro-grid">
                                                <span class="buy-in">查看</span>
                                            </div>
                                        </a>
                                    </div>
                                    <p class="tun" style="white-space:nowrap;"> <%= newsTop6.Rows[i]["title"] %></p>
                            <br />
                                </div>
                                <%} %>
                          
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
	
              </div>
        </div>
    <div class="content-bottom"></div>
        <!-- 友情链接 -->
     <%--   <div class="content-bottom">
            <ul>
                <li><a href="#">
                    <img class="img-responsive" src="images/lo.png" alt=""></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/lo1.png" alt=""></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/lo2.png" alt=""></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/lo3.png" alt=""></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/lo4.png" alt=""></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/lo5.png" alt=""></a></li>
                <div class="clearfix"></div>
            </ul>
        </div>--%>
    </div>
    <div class="footer">
         <div class="container">
            <div class="footer-top-at">

                <div class="col-md-3 amet-sed">
                    <h4>网站地图</h4>
                    <ul class="nav-bottom">
                        <li><a href="index.aspx">首页</a></li>
                        <li><a href="products.aspx">产品中心</a></li>
                         <li><a href="news.aspx">资讯中心</a></li> 
                        <li><a href="activity.aspx">活动中心</a></li>
                        <li><a href="contact.aspx">关于我们</a></li> 
                    </ul>
                </div>
                 <div class="col-md-3 amet-sed">
                    <h4>产品中心</h4>
                    <ul class="nav-bottom">
                         <%
                             modelLeng = modelList.Rows.Count > 5 ? 5 : modelList.Rows.Count ;
                             for (int i = 0; i < modelLeng; i++)
                             {
                                 %>
                         <li><a href="products.aspx?id=<%= modelList.Rows[i]["id"] %>"><%= modelList.Rows[i]["name"] %></a></li>
                          <%
                             }
                             %> 
                    </ul>
                </div>
                 <div class="col-md-3 amet-sed">
                    <h4>资讯中心</h4>
                    <ul class="nav-bottom">
                        <li><a href="knowledge.aspx">玉器文化</a></li>
                        <li><a href="joinin.aspx">投资加盟</a></li>
                        <li><a href="news.aspx">公司新闻</a></li>
                        <li><a href="activity.aspx">平台活动</a></li>
                        <li><a href="videos.aspx">宣传视频</a></li>
                    </ul>
                </div>
            <div class="col-md-3 amet-sed ">
				<h4>联系我们</h4>  
					<p> 联系电话: <%= contactDt.Rows[0]["Phone"].ToString() %></p>
					<p> Email: <%= contactDt.Rows[0]["Email"].ToString() %></p> 
				    <p> 地址: <%= contactDt.Rows[0]["Address"].ToString() %></p>
				</div>
                <div class="clearfix"></div>
            </div>
        </div> 
        <div class="footer-class">
            <p>Copyright &copy; 2016 .</p>
        </div>
    </div>

   <!-- 客服 -->

        <div id="rightArrow" class="open-im">&nbsp;</div> 
        <div id="floatDivBoxs">
            <div class="floatDtt">在线客服</div>
            <div class="floatShadow">
                <ul class="floatDqq">
                    <%
                        Dictionary<string,string> qqList =  JadeWeb. com.settings.getQQs();
                        List<string> phoneList =  JadeWeb.com.settings.getPhones();
                        foreach (KeyValuePair<string, string> item in qqList)
                        {
                            if (item.Key.Split('-').Length > 0)
                            {
                    %>
                    <li><a target="_blank" href="tencent://message/?uin=<%= item.Key.Split('-')[0] %>&Site=sc.chinaz.com&Menu=yes">
                        <img src="js/customerservice/images/qq.png" align="absmiddle"><%= item.Value %></a></li>
                    <%}
                        }
                    %>
                </ul>
                <div class="floatDtxt">热线电话</div>
                <div class="floatDtel">
                    <ul class="floatDphone">
                        <%
                            for (int i = 0; i < phoneList.Count; i++)
                            {%>
                        <li><a href="javascript:;">
                            <img src="js/customerservice/images/phone.png" align="absmiddle">
                            <%= phoneList[i] %> </a></li>
                        <%}
                        %>
                    </ul>
                    <div class="floatImg">
                        <img src="js/customerservice/images/erweima.jpg" width="100%">微信公众账号
                    </div>
                </div>
                <div class="floatDbg"></div>
            </div>
        </div>
    <%-- <div class="lanrenzhijia_m" id="lanrenzhijia_m">
        <ul>
            <a href="javascript:;" class="close" name="close"></a>
            <a href="tencent://message/?uin=639083793&Site=sc.chinaz.com&Menu=yes" target="_blank" style="left: 145px;"></a>
            <a href="javascript:;" name="close" style="left: 235px;"></a>
        </ul>
    </div>--%>
        <!--客服end-->


</body>
</html>
			