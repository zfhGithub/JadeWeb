﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="JadeWeb.news" %>


<!DOCTYPE html>
<html>
<head> 
<title>新闻<%=aboutusDic["SeoTitle"] %></title>
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
						<li ><a class="lock"  href="login.aspx"  >Login</a></li>
						<li><a class="lock" href="games.aspx"  >Checkout</a></li>
						<li>
</li>

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
										<li><a href="activity.aspx"</a></li> 
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
				<li><a class="color4" href="joinin.aspx">投资加盟>活动中心</a></li>				
				<li><a class="color6" href="contact.aspx">关于我们</a></li>
			  </ul> 
			</div> 
				
				<div class="clearfix"> </div>
		</div>
		</div>

	</div>

	
<!--content-->
<!---->
    <div class="product">
        <div class="container">
            <div class="col-md-3 product-price">
                 
                <!----> 
                <div class="sellers">
                    <div class="of-left-in">
                        <h3 class="tag" style="white-space:nowrap;">资讯中心</h3>
                    </div>
                    <div class="tags">
                        <ul>
                            <li><a href="knowledge.aspx">玉器文化</a></li>
                            <li><a href="news.aspx">公司新闻</a></li>
                            <li><a href="videos.aspx">宣传视频</a></li>
                            <li><a href="joinin.aspx">投资加盟</a></li>
                            <li><a href="activity.aspx">平台活动</a></li>
                            <div class="clearfix"></div>
                        </ul>

                    </div>

                </div>
                <!---->
                <div class="product-bottom">
                    <div class="of-left-in">
                        <h3 class="best">最新资讯</h3>
                    </div>
                    <% for (int i = 0; i < newsTop5.Rows.Count; i++)
                        {%>
                       <div class="product-go">
                        <div class=" fashion-grid">
                            <a href="blog_single.aspx?id=<%= newsTop5.Rows[i]["id"] %>">
                                <img class="img-responsive " src="<%= newsTop5.Rows[i]["photo"] %>" alt=""></a>

                        </div>
                        <div class=" fashion-grid1">
                            <h6 class="best2"><a href="blog_single.aspx?id=<%= newsTop5.Rows[i]["id"] %>"><%= newsTop5.Rows[i]["title"] %></a></h6>

                          <%--  <span class=" price-in1">$40.00</span>--%>
                        </div>

                        <div class="clearfix"></div>
                    </div>
                        <%} %> 

                </div>
                 <% for (int i = 0; i < activityList.Rows.Count; i++)
                    {%>
                        <div class=" per1">
                                        <a href="blog_single.aspx?id=<%= activityList.Rows[i]["id"] %>">
                                            <img class="img-responsive" src="<%= activityList.Rows[i]["photo"] %>" alt="">
                                            <div class="six1">
                                                <h4><%= activityList.Rows[i]["title"] %></h4>
                                               <%-- <p>Up to</p>
                                                <span>60%</span>--%>
                                            </div>
                                        </a>
                            </div>
                    <%} %>
            </div>
            <div class="col-md-9 product1">
               <% 
                      int index = 0;
                   for (int i = 0; i < newsList.Rows.Count; i++)
                   {
                  
                       if (i % 3 == 0)
                       {
                         
                           %>
                                <div class=" bottom-product">
                           <% }
                                 index++;
                            %>
                                    <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                                        <div class="product-at ">
                                            <a href="blog_single.aspx?id=<%=newsList.Rows[i]["id"] %>" target="_blank">
                                                <img class="img-responsive" src="<%=newsList.Rows[i]["photo"]  %>" alt="" style="height:170px;width:255px;">
                                                <div class="pro-grid">
                                                    <span class="buy-in">查看</span>
                                                </div>
                                            </a>
                                        </div>   
                                        
                                        <p class="tun"><%= newsList.Rows[i]["title"]  %></p>
                                   
                                    </div>
                       <% 
                           if (index == 3)
                           {
                               index = 0;
                               %>
                                        <div class="clearfix"></div>
                </div>
                           <%    }
                           } %>
             </div>
            <div class="clearfix"></div>
            <nav class="in">
                <ul class="pagination">
                   
                    <%
                        double pages = Math.Ceiling( Convert.ToDouble( Convert.ToDouble( newstListCount)/  Convert.ToDouble( 12)));
                        int prev = Convert.ToInt32(currentIndex) -1 > 1 ? Convert.ToInt32(currentIndex) -1 : 1;
                        int next = Convert.ToInt32(currentIndex) +1 >  Convert.ToInt32(pages) ?  Convert.ToInt32(pages): Convert.ToInt32(currentIndex) +1;
                        %>
                     <li class=""><a href="news.aspx?page=<%= prev %>&id=<%= modelid %>" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                     <%
                        for (int i = 0; i < pages ; i++)
                        {
                            string className = "";
                            if(currentIndex == (i+1).ToString())
                            {
                                className = "active";
                            }
                            %>
                          <li class="<%= className %>"><a href="news.aspx?page=<%= (i+1) %>&id=<%= modelid %>"> <%= (i+1) %> </a></li>
                        <%} %>
                  <%--  <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li> --%>
                    <li><a href="news.aspx?page=<%= next %>&id=<%= modelid %>" aria-label="Next"><span aria-hidden="true">»</span> </a></li>
                </ul>
            </nav>
        </div>

    </div>
			
				<!---->

<!--//content-->
    <div class="footer">
        <%--<div class="container">
            <div class="footer-top-at">

                <div class="col-md-4 amet-sed">
                    <h4>MORE INFO</h4>
                    <ul class="nav-bottom">
                        <li><a href="#">How to order</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="contact.aspx">Location</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Membership</a></li>
                    </ul>
                </div>
                <div class="col-md-4 amet-sed ">
                    <h4>CONTACT US</h4>

                    <p>
                        Contrary to popular belief
                    </p>
                    <p>The standard chunk</p>
                    <p>office:  +12 34 995 0792</p>
                    <ul class="social">
                        <li><a href="#"><i></i></a></li>
                        <li><a href="#"><i class="twitter"></i></a></li>
                        <li><a href="#"><i class="rss"></i></a></li>
                        <li><a href="#"><i class="gmail"></i></a></li>

                    </ul>
                </div>
                <div class="col-md-4 amet-sed">
                    <h4>Newsletter</h4>
                    <p>
                        Sign Up to get all news update
and promo
                    </p>
                    <form>
                        <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                        <input type="submit" value="Sign up">
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>--%>
        <div class="footer-class">
            <p>Copyright &copy; 2016.四会市东辉珠宝有限公司</p>
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
			