﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="JadeWeb.single" %>
<!DOCTYPE html>
<html>
<head>
<title><%= pDic["name"] %></title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://apps.bdimg.com/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!--fonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
 

<script src="js/main.js"></script>
<script src="js/simpleCart.min.js"> </script>
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
                        <li class="active grid"><a class="color8" href="index.aspx">Home</a></li>
                        <li><a class="color1" href="#">Shop</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <ul>
                                                <li><a href="products.aspx">Accessories</a></li>
                                                <li><a href="products.aspx">Bags</a></li>
                                                <li><a href="products.aspx">Caps & Hats</a></li>
                                                <li><a href="products.aspx">Hoodies & Sweatshirts</a></li>
                                                <li><a href="products.aspx">Jackets & Coats</a></li>
                                                <li><a href="products.aspx">Jeans</a></li>
                                                <li><a href="products.aspx">Jewellery</a></li>
                                                <li><a href="products.aspx">Jumpers & Cardigans</a></li>
                                                <li><a href="products.aspx">Leather Jackets</a></li>
                                                <li><a href="products.aspx">Long Sleeve T-Shirts</a></li>
                                                <li><a href="products.aspx">Loungewear</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <ul>
                                                <li><a href="products.aspx">Shirts</a></li>
                                                <li><a href="products.aspx">Shoes, Boots & Trainers</a></li>
                                                <li><a href="products.aspx">Shorts</a></li>
                                                <li><a href="products.aspx">Suits & Blazers</a></li>
                                                <li><a href="products.aspx">Sunglasses</a></li>
                                                <li><a href="products.aspx">Sweatpants</a></li>
                                                <li><a href="products.aspx">Swimwear</a></li>
                                                <li><a href="products.aspx">Trousers & Chinos</a></li>
                                                <li><a href="products.aspx">T-Shirts</a></li>
                                                <li><a href="products.aspx">Underwear & Socks</a></li>
                                                <li><a href="products.aspx">Vests</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Popular Brands</h4>
                                            <ul>
                                                <li><a href="products.aspx">Levis</a></li>
                                                <li><a href="products.aspx">Persol</a></li>
                                                <li><a href="products.aspx">Nike</a></li>
                                                <li><a href="products.aspx">Edwin</a></li>
                                                <li><a href="products.aspx">New Balance</a></li>
                                                <li><a href="products.aspx">Jack & Jones</a></li>
                                                <li><a href="products.aspx">Paul Smith</a></li>
                                                <li><a href="products.aspx">Ray-Ban</a></li>
                                                <li><a href="products.aspx">Wood Wood</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a class="color2" href="#">Lookbook</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <ul>
                                                <li><a href="products.aspx">Accessories</a></li>
                                                <li><a href="products.aspx">Bags</a></li>
                                                <li><a href="products.aspx">Caps & Hats</a></li>
                                                <li><a href="products.aspx">Hoodies & Sweatshirts</a></li>
                                                <li><a href="products.aspx">Jackets & Coats</a></li>
                                                <li><a href="products.aspx">Jeans</a></li>
                                                <li><a href="products.aspx">Jewellery</a></li>
                                                <li><a href="products.aspx">Jumpers & Cardigans</a></li>
                                                <li><a href="products.aspx">Leather Jackets</a></li>
                                                <li><a href="products.aspx">Long Sleeve T-Shirts</a></li>
                                                <li><a href="products.aspx">Loungewear</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <ul>
                                                <li><a href="products.aspx">Shirts</a></li>
                                                <li><a href="products.aspx">Shoes, Boots & Trainers</a></li>
                                                <li><a href="products.aspx">Shorts</a></li>
                                                <li><a href="products.aspx">Suits & Blazers</a></li>
                                                <li><a href="products.aspx">Sunglasses</a></li>
                                                <li><a href="products.aspx">Sweatpants</a></li>
                                                <li><a href="products.aspx">Swimwear</a></li>
                                                <li><a href="products.aspx">Trousers & Chinos</a></li>
                                                <li><a href="products.aspx">T-Shirts</a></li>
                                                <li><a href="products.aspx">Underwear & Socks</a></li>
                                                <li><a href="products.aspx">Vests</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Popular Brands</h4>
                                            <ul>
                                                <li><a href="products.aspx">Levis</a></li>
                                                <li><a href="products.aspx">Persol</a></li>
                                                <li><a href="products.aspx">Nike</a></li>
                                                <li><a href="products.aspx">Edwin</a></li>
                                                <li><a href="products.aspx">New Balance</a></li>
                                                <li><a href="products.aspx">Jack & Jones</a></li>
                                                <li><a href="products.aspx">Paul Smith</a></li>
                                                <li><a href="products.aspx">Ray-Ban</a></li>
                                                <li><a href="products.aspx">Wood Wood</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li><a class="color4" href="blog.aspx">Blog</a></li>
                        <li><a class="color6" href="contact.aspx">Conact</a></li>
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

                <div class=" rsidebar span_1_of_left">
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
                </div>
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
                <div class="product-middle">

                    <div class="fit-top">
                        <h6 class="shop-top">Lorem Ipsum</h6>
                        <a href="#" class="shop-now">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="sellers">
                    <div class="of-left-in">
                        <h3 class="tag">Tags</h3>
                    </div>
                    <div class="tags">
                        <ul>
                            <li><a href="#">design</a></li>
                            <li><a href="#">fashion</a></li>
                            <li><a href="#">lorem</a></li>
                            <li><a href="#">dress</a></li>
                            <li><a href="#">fashion</a></li>
                            <li><a href="#">dress</a></li>
                            <li><a href="#">design</a></li>
                            <li><a href="#">dress</a></li>
                            <li><a href="#">design</a></li>
                            <li><a href="#">fashion</a></li>
                            <li><a href="#">lorem</a></li>
                            <li><a href="#">dress</a></li>

                            <div class="clearfix"></div>
                        </ul>

                    </div>

                </div>
                <!---->
                <div class="product-bottom">
                    <div class="of-left-in">
                        <h3 class="best">Best Sellers</h3>
                    </div>
                    <div class="product-go">
                        <div class=" fashion-grid">
                            <a href="#">
                                <img class="img-responsive " src="images/p1.jpg" alt=""></a>

                        </div>
                        <div class=" fashion-grid1">
                            <h6 class="best2"><a href="#">Lorem ipsum dolor sit
amet consectetuer  </a></h6>

                            <span class=" price-in1">$40.00</span>
                        </div>

                        <div class="clearfix"></div>
                    </div>
                    <div class="product-go">
                        <div class=" fashion-grid">
                            <a href="#">
                                <img class="img-responsive " src="images/p2.jpg" alt=""></a>

                        </div>
                        <div class="fashion-grid1">
                            <h6 class="best2"><a href="#">Lorem ipsum dolor sit
amet consectetuer </a></h6>

                            <span class=" price-in1">$40.00</span>
                        </div>

                        <div class="clearfix"></div>
                    </div>

                </div>
                <div class=" per1">
                    <a href="#">
                        <img class="img-responsive" src="images/pro.jpg" alt="">
                        <div class="six1">
                            <h4>DISCOUNT</h4>
                            <p>Up to</p>
                            <span>60%</span>
                        </div>
                    </a>
                </div>
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
                            <li><span>发布时间:</span>
                                <span class="women1"> <%= pDic["created"] %></span></li>
                            <li><span>&nbsp&nbsp&nbsp&nbsp  分类: </span>
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
                    <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="images/pi3.jpg" alt="">
                                <div class="pro-grid">
                                    <span class="buy-in">Buy Now</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">It is a long established fact that a reader</p>
                        <a href="#" class="item_add">
                            <p class="number item_price"><i></i>$500.00</p>
                        </a>
                    </div>
                    <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="images/pi1.jpg" alt="">
                                <div class="pro-grid">
                                    <span class="buy-in">Buy Now</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">It is a long established fact that a reader</p>
                        <a href="#" class="item_add">
                            <p class="number item_price"><i></i>$500.00</p>
                        </a>
                    </div>
                    <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="images/pi4.jpg" alt="">
                                <div class="pro-grid">
                                    <span class="buy-in">Buy Now</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">It is a long established fact that a reader</p>
                        <a href="#" class="item_add">
                            <p class="number item_price"><i></i>$500.00</p>
                        </a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
    <!--//content-->
    <div class="footer">
        <div class="container">
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
        </div>
        <div class="footer-class">
            <p>Copyright &copy; 2015.Company name All rights reserved.</p>
        </div>
    </div>
</body>
</html>
			