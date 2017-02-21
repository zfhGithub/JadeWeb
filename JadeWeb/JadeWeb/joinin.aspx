<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="joinin.aspx.cs" Inherits="JadeWeb.joinin" %>
 <!DOCTYPE html>
<html>
<head> 
<title>投资加盟<%=aboutusDic["SeoTitle"] %></title>
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
						<li><a class="lock" href="register.aspx"  >Register</a></li>
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
										<li><a href="activity.aspx">活动中心</a></li> 
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
				<li><a class="color4" href="joinin.aspx">投资加盟</a></li>				
				<li><a class="color6" href="contact.aspx">关于我们</a></li>
			  </ul> 
			</div> 
				
				<div class="clearfix"> </div>
		</div>
		</div>

	</div>

	
<!--content-->
<div class="blog">
<div class="container">
<%--	<h1>Blog</h1>--%>
       <%
                int length = joinList.Rows.Count;
                int index = 0;
                for (int i = 0; i < length; i++)
                {
                    if (i % 2 == 0)
                    {
                        %>  <div class="blog-top"><%
                    }
                    index++;
                   %>
                  <div class="col-md-6 grid_3">
                    <h3><a href="blog_single.aspx?id=<%=joinList.Rows[i]["id"]  %>"><%= joinList.Rows[i]["title"] %></a></h3>
                 	<a href="blog_single.aspx?id=<%= joinList.Rows[i]["id"] %>"><img src="<%= joinList.Rows[i]["photo"] %>" class="img-responsive" alt=""/></a>
					
                    <div class="blog-poast-info">
                        <ul>
                            <li><a class="admin" href="#"><i></i>Admin </a></li>
                            <li><span><i class="date"></i><%= joinList.Rows[i]["created"] %></span></li>
                        <%--<li><a class="p-blog" href="#"><i class="comment"></i>No Comments</a></li>--%>
                        </ul>
                    </div>
                    <p><%= joinList.Rows[i]["subtitle"] %></p>
               <%--     <div class="button"><a href="#">Read More</a></div>--%>
                </div>
                  <% 
                      if (index==2)
                      {
                          index = 0;
                              %>    <div class="clearfix"></div>
            </div> <%
                          }
                      } %>
 
      </div>
</div>
<!--//content-->
<div class="footer">
			<%--	<div class="container">
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
Contrary to popular belief</p>
					<p>The standard chunk</p>
					<p>office:  +12 34 995 0792</p>
					<ul class="social">
						<li><a href="#"><i> </i></a></li>						
						<li><a href="#"><i class="twitter"> </i></a></li>
						<li><a href="#"><i class="rss"> </i></a></li>
						<li><a href="#"><i class="gmail"> </i></a></li>
						
					</ul>
				</div>
				<div class="col-md-4 amet-sed">
					<h4>Newsletter</h4>
					<p>Sign Up to get all news update
and promo</p>
					<form>
						<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<input type="submit" value="Sign up">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>--%>
		<div class="footer-class">
		<p >Copyright &copy; 2016.四会市东辉珠宝有限公司</p>
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
			