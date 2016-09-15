<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="JadeWeb.single" %>
<!DOCTYPE html>
<html>
<head> 
<title><%= pDic["name"] %><%=aboutusDic["SeoTitle"] %></title>
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
 

<script src="js/main.js"></script>
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
                    <a href="index.aspx">
                        <img src="images/logo.png" alt=""></a>
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

                <div class="clearfix"></div>
            </div>
        </div>

    </div>


    <!--content-->
    <!---->
    <div class="product">
        <div class="container">
            <div class="col-md-3 product-price">

               <%-- <div class=" rsidebar span_1_of_left">
                    <div class="of-left">
                        <h3 class="cate">Categories</h3>
                    </div>
                    <ul class="menu">
                        <li class="item1"><a href="#">Men </a>
                            <ul class="cute">
                                <li class="subitem1"><a href="#">Cute Kittens </a></li>
                                <li class="subitem2"><a href="#">Strange Stuff </a></li>
                                <li class="subitem3"><a href="#">Automatic Fails </a></li>
                            </ul>
                        </li>
                        <li class="item2"><a href="#">Women </a>
                            <ul class="cute">
                                <li class="subitem1"><a href="#">Cute Kittens </a></li>
                                <li class="subitem2"><a href="#">Strange Stuff </a></li>
                                <li class="subitem3"><a href="#">Automatic Fails </a></li>
                            </ul>
                        </li>
                        <li class="item3"><a href="#">Kids</a>
                            <ul class="cute">
                                <li class="subitem1"><a href="#">Cute Kittens </a></li>
                                <li class="subitem2"><a href="#">Strange Stuff </a></li>
                                <li class="subitem3"><a href="#">Automatic Fails</a></li>
                            </ul>
                        </li>
                        <li class="item4"><a href="#">Accesories</a>
                            <ul class="cute">
                                <li class="subitem1"><a href="#">Cute Kittens </a></li>
                                <li class="subitem2"><a href="#">Strange Stuff </a></li>
                                <li class="subitem3"><a href="#">Automatic Fails</a></li>
                            </ul>
                        </li>

                        <li class="item4"><a href="#">Shoes</a>
                            <ul class="cute">
                                <li class="subitem1"><a href="#">Cute Kittens </a></li>
                                <li class="subitem2"><a href="#">Strange Stuff </a></li>
                                <li class="subitem3"><a href="product.aspx">Automatic Fails </a></li>
                            </ul>
                        </li>
                    </ul>
                </div>--%>
                <!--initiate accordion-->
                <script type="text/javascript">
                    $(function () {
                        var menu_ul = $('.menu > li > ul'),
                               menu_a = $('.menu > li > a');
                        menu_ul.hide();
                        menu_a.click(function (e) {
                            e.preventDefault();
                            if (!$(this).hasClass('active')) {
                                menu_a.removeClass('active');
                                menu_ul.filter(':visible').slideUp('normal');
                                $(this).addClass('active').next().stop(true, true).slideDown('normal');
                            } else {
                                $(this).removeClass('active');
                                $(this).next().stop(true, true).slideUp('normal');
                            }
                        });

                    });
		</script>
                <!---->
                <%--<div class="product-middle">

                    <div class="fit-top">
                        <h6 class="shop-top"> </h6>
                        <a href="products.aspx" class="shop-now">查看全部商品</a>
                        <div class="clearfix"></div>
                    </div>
                </div>--%>
                <div class="sellers">
                    <div class="of-left-in">
                        <h3 class="tag">分类</h3>
                    </div>
                    <div class="tags">
                        <ul>
                              <li><a href="products.aspx">全部</a></li>
                            <% for (int i = 0; i < modelList.Rows.Count; i++)
                                {%>
                            <li><a href="products.aspx?id=<%= modelList.Rows[i]["id"] %>"><%= modelList.Rows[i]["name"] %></a></li>
                            <% } %>
                            <div class="clearfix"></div>
                        </ul>

                    </div>

                </div>
                <!---->
                <div class="product-bottom">
                     <div class="of-left-in">
                        <h3 class="best">畅销</h3>
                    </div>
                    <% for (int i = 0; i < hotList.Rows.Count; i++)
                        {%>
                       <div class="product-go">
                        <div class=" fashion-grid">
                            <a href="single.aspx?id=<%= hotList.Rows[i]["id"] %>">
                                <img class="img-responsive " src="<%= hotList.Rows[i]["photo"] %> " alt=""></a>

                        </div>
                        <div class=" fashion-grid1">
                            <h6 class="best2"><a href="single.aspx?id=<%= hotList.Rows[i]["id"] %>"> <%= hotList.Rows[i]["name"] %> </a></h6>

                            <span class=" price-in1">¥<%= hotList.Rows[i]["price"] %> </span>
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
            <div class="col-md-9 product-price1">
                <div class="col-md-5 single-top">
                    <div class="flexslider">
                        <ul class="slides">
                            <% for (int i = 0; i < imgList.Count; i++)
                                {%>
                                    <li data-thumb="<%= imgList[i] %>">
                                        <img src="<%= imgList[i] %>" />
                                    </li>
                                <%} %> 
                        </ul>
                    </div>
                    <!-- FlexSlider -->
                    <script defer src="js/jquery.flexslider.js"></script>
                    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                    <script>
                        // Can also be used with $(document).ready()
                        $(window).load(function () {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails"
                            });
                        });
</script>
                </div>
                <div class="col-md-7 single-top-in simpleCart_shelfItem">
                    <div class="single-para ">
                        <h4><%= pDic["name"] %></h4>
                      <%--  <div class="star-on">
                          一条评论
                            <ul class="star-footer">
                                <li><a href="#"><i></i></a></li>
                                <li><a href="#"><i></i></a></li>
                                <li><a href="#"><i></i></a></li>
                                <li><a href="#"><i></i></a></li>
                                <li><a href="#"><i></i></a></li>
                            </ul>
                            <div class="review">
                                <a href="#">1 customer review </a> 
                            </div>
                            <div class="clearfix"></div>
                        </div>--%>

                        <h5 class="item_price">¥<%= pDic["price"] %>元</h5>
                        <p>
                           <%= pDic["title"] %>
                        </p>
                       <%-- <div class="available">
                            <ul>
                                <li>Color
									
                                    <select>
                                        <option>Silver</option>
                                        <option>Black</option>
                                        <option>Dark Black</option>
                                        <option>Red</option>
                                    </select></li>
                                <li class="size-in">Size<select>
                                    <option>Large</option>
                                    <option>Medium</option>
                                    <option>small</option>
                                    <option>Large</option>
                                    <option>small</option>
                                </select></li>
                                <div class="clearfix"></div>
                            </ul>
                        </div>--%>
                        <ul class="tag-men">
                            <li><span>商品编号:</span>
                                <span class="women1"> <%= pDic["number"] %></span></li>
                            <li><span>发布时间:</span>
                                <span class="women1"> <%= pDic["created"] %></span></li>
                            <li><span>&nbsp&nbsp 分类: </span>
                                <span class="women1"><%= pDic["modelname"] %></span></li>
                        </ul>
                        <a href="#" class="add-cart item_add">购买</a>

                    </div>
                </div>
                <div class="clearfix"></div>
                <!---->
                <div class="cd-tabs">
                    <nav>
                        <ul class="cd-tabs-navigation">
                            <li><a data-content="fashion" href="#0">描述 </a></li>
                           <%-- <li><a data-content="cinema" href="#0">附加信息</a></li>--%>
                           <%-- <li><a data-content="television" href="#0" class="selected ">评论(1)</a></li> --%>
                        </ul>
                    </nav>
                    <ul class="cd-tabs-content">
                        <li data-content="fashion" class="selected">
                            <div class="facts">
                                <p> <%= pDic["describe"] %> </p>
                                <ul>
                                    <li>Research</li>
                                    <li>Design and Development</li>
                                    <li>Porting and Optimization</li>
                                    <li>System integration</li>
                                    <li>Verification, Validation and Testing</li>
                                    <li>Maintenance and Support</li>
                                </ul>
                            </div>

                        </li>
                        <li data-content="cinema">
                            <div class="facts1">

                                <div class="color">
                                    <p>Color</p>
                                    <span>Blue, Black, Red</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="color">
                                    <p>Size</p>
                                    <span>S, M, L, XL</span>
                                    <div class="clearfix"></div>
                                </div>

                            </div>

                        </li>
                        <li data-content="television" >
                            <div class="comments-top-top">
                                <div class="top-comment-left">
                                    <img class="img-responsive" src="images/co.png" alt="">
                                </div>
                                <div class="top-comment-right">
                                    <h6><a href="#">Hendri</a> - September 3, 2014</h6>
                                    <ul class="star-footer">
                                        <li><a href="#"><i></i></a></li>
                                        <li><a href="#"><i></i></a></li>
                                        <li><a href="#"><i></i></a></li>
                                        <li><a href="#"><i></i></a></li>
                                        <li><a href="#"><i></i></a></li>
                                    </ul>
                                    <p>Wow nice!</p>
                                </div>
                                <div class="clearfix"></div>
                                <a class="add-re" href="#">ADD REVIEW</a>
                            </div>

                        </li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
                <div class=" bottom-product">
                    <div class="of-left-in">
                        <h3 class="tag">猜你喜欢</h3>
                    </div> <br />
                    <% for (int i = 0; i < likeList.Rows.Count; i++)
                        {%>
                        <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="single.aspx?id=<%= likeList.Rows[i]["id"] %>">
                                <img class="img-responsive" src="<%= likeList.Rows[i]["photo"] %>" alt="">
                                <div class="pro-grid">
                                    <span class="buy-in">查看</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun"><%= likeList.Rows[i]["name"] %></p>
                        <a href="single.aspx?id=<%= likeList.Rows[i]["id"] %>" class="item_add">
                            <p class="number item_price"><i></i>¥<%= likeList.Rows[i]["price"] %>元</p>
                        </a>
                    </div>
                        <%
                                if ((i +1)  % 3 == 0)
                                {
                                    %>  <div class="clearfix"></div> <div class="clearfix"></div> <br/> <br/> <%
                                }
                            } %>
                     
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
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
            <p>Copyright &copy; 2016.Company name All rights reserved.</p>
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
			