<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>VICTORIA'S SECRET 维多利亚的秘密</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<!--网页标题栏的logo-->
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />
</head>

<body>
	<!-- header-bot 最顶端:搜索框+logo+登录+注册+购物车 -->
	<div class="header-bot" id="home">
		<div class="header-bot_inner_wthreeinfo_header_mid">

			<!--搜索框-->
			<div class="col-md-4 header-middle">
				<form action="#" method="post">
					<input type="search" name="search" placeholder="搜索...." required="">
					<input type="submit" value=" ">
				</form>
			</div>
			<!--logo-->
			<div class="logo_pic">
				<a href="index.jsp"><img src="images/logo.jpg" align="center" /></a>
			</div>
			<!--登录+注册+购物车-->
			<div class="login_resiger">
				<div class="login">
					<a href="#" data-toggle="modal" data-target="#myModal"> 登录</a>
				</div>
				<div class="resiger">
					<a href="#" data-toggle="modal" data-target="#myModal2"> 注册</a>
				</div>
				<div class="car">
					<a href="#" class="fa fa-phone" aria-hidden="true"> 购物车</a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header-bot -->
	<!-- banner 导航分类栏-->
	<div class="ban-top">
		<div class="container">
			<div class="top_nav_left" align="left">
				<nav class="navbar navbar-default"> <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav menu__list">
						<li class="active menu__item "><a class="menu__link"
							href="index.jsp">首页 </a></li>
						<li class=" menu__item"><a class="menu__link"
							href="about.jsp">品牌信息</a></li>

						<!--唇部 有下拉列表-->
						<li class="dropdown menu__item"><a href="#"
							class="dropdown-toggle menu__link" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">唇部 <span
								class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="agile_inner_drop_nav_info">
									<!--口红的小图标-->
									<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
										<a href="chun.jsp"><img src="images/top2.jpg" alt=" " /></a>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="chun.jsp">口红</a></li>
											<li><a href="chun.jsp">唇彩</a></li>
											<li><a href="chun.jsp">唇釉</a></li>
											<li><a href="chun.jsp">唇膏</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul></li>

						<!--身体护理-->
						<li class="dropdown menu__item"><a href="#"
							class="dropdown-toggle menu__link" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">身体
								护理<span class="caret"></span>
						</a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="agile_inner_drop_nav_info">
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="body.jsp">护手霜</a></li>
											<li><a href="body.jsp">身体乳</a></li>
										</ul>
									</div>
									<!--护肤的小图标-->
									<div class="col-sm-6 multi-gd-img multi-gd-text ">
										<a href="body.jsp"><img src="images/top1.jpg" alt=" " /></a>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul></li>

						<!--香水-->
						<li class=" menu__item menu__item--current"><a
							class="menu__link" href="xiang.jsp">香水 </a></li>
					</ul>
				</div>
			</div>
			</nav>
		</div>

		<div class="clearfix"></div>
	</div>
	</div>
	<!-- //banner-top -->
	<!-- Modal1 -->
	<!--最上方登录的点击事件-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							<span>立即</span>登录
						</h3>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required=""> <label>姓名</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> <label>邮箱</label>
								<span></span>
							</div>
							<input type="submit" value="登 录">
						</form>
						<div class="clearfix"></div>
						<p>
							<a href="#" data-toggle="modal" data-target="#myModal2">
								没有账户?</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img src="images/log_pic.jpg" alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- Modal2 -->
	<!--最上方注册的点击事件-->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							立即 <span>注册</span>
						</h3>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required=""> <label>姓名</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> <label>邮箱</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="password" required=""> <label>密码</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="Confirm Password" required="">
								<label>再次 确认</label> <span></span>
							</div>
							<input type="submit" value="注 册">
						</form>
						<div class="clearfix"></div>
						<p>
							<a href="#">点击同意协议</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img src="images/log_pic.jpg" alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators 轮播图小点-->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			<li data-target="#myCarousel" data-slide-to="4" class=""></li>
		</ol>
		<!--轮播图位置开始-->
		<div class="carousel-inner" role="listbox">
			<div class="item xiangitem1 active">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<div class="item xiangitem2">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<div class="item xiangitem3">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<div class="item xiangitem4">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<div class="item xiangitem5">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
		</div>
		<!--轮播图位置结束-->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">下一个</span>
		</a>
		<!-- The Modal -->
	</div>
	<!-- //banner 轮播图结束-->
	<!--香水商品开始-->
	<div class="tab4">

		<div class="col-md-3 product-men">
			<div class="men-pro-item simpleCart_shelfItem">
				<div class="men-thumb-item">
					<img src="images/s1.jpg" alt="" class="pro-image-front"> <img
						src="images/s1.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="xiang.jsp" class="link-product-add-cart">快速 查看</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="xiang.jsp">香水1</a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥80.99</span>
						<del>￥89.71</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value="香水1" /> <input type="hidden"
									name="amount" value="30.99" /> <input type="hidden"
									name="discount_amount" value="1.00" /> <input type="hidden"
									name="currency_code" value="RMB" /> <input type="hidden"
									name="return" value=" " /> <input type="hidden"
									name="cancel_return" value=" " /> <input type="submit"
									name="submit" value="加入购物车" class="button" />
							</fieldset>
						</form>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-3 product-men">
			<div class="men-pro-item simpleCart_shelfItem">
				<div class="men-thumb-item">
					<img src="images/s2.jpg" alt="" class="pro-image-front"> <img
						src="images/s2.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="xiang.jsp" class="link-product-add-cart">快速 查看</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="single.jsp">香水2</a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥90.99</span>
						<del>￥59.71</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value="香水2" /> <input type="hidden"
									name="amount" value="30.99" /> <input type="hidden"
									name="discount_amount" value="1.00" /> <input type="hidden"
									name="currency_code" value="RMB" /> <input type="hidden"
									name="return" value=" " /> <input type="hidden"
									name="cancel_return" value=" " /> <input type="submit"
									name="submit" value="加入购物车" class="button" />
							</fieldset>
						</form>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-3 product-men">
			<div class="men-pro-item simpleCart_shelfItem">
				<div class="men-thumb-item">
					<img src="images/s3.jpg" alt="" class="pro-image-front"> <img
						src="images/s3.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="xiang.jsp" class="link-product-add-cart">快速查看</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="xiang.jsp">香水3</a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥90.99</span>
						<del>￥59.71</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value="香水3" /> <input type="hidden"
									name="amount" value="30.99" /> <input type="hidden"
									name="discount_amount" value="1.00" /> <input type="hidden"
									name="currency_code" value="RMB" /> <input type="hidden"
									name="return" value=" " /> <input type="hidden"
									name="cancel_return" value=" " /> <input type="submit"
									name="submit" value="加入购物车" class="button" />
							</fieldset>
						</form>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-3 product-men">
			<div class="men-pro-item simpleCart_shelfItem">
				<div class="men-thumb-item">
					<img src="images/s4.jpg" alt="" class="pro-image-front"> <img
						src="images/s4.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="xiang.jsp" class="link-product-add-cart">快速查看</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="xiang.jsp">香水4</a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥40.99</span>
						<del>￥99.71</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value="香水4" /> <input type="hidden"
									name="amount" value="30.99" /> <input type="hidden"
									name="discount_amount" value="1.00" /> <input type="hidden"
									name="currency_code" value="RMB" /> <input type="hidden"
									name="return" value=" " /> <input type="hidden"
									name="cancel_return" value=" " /> <input type="submit"
									name="submit" value="加入购物车" class="button" />
							</fieldset>
						</form>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-3 product-men">
			<div class="men-pro-item simpleCart_shelfItem">
				<div class="men-thumb-item">
					<img src="images/s5.jpg" alt="" class="pro-image-front"> <img
						src="images/s5.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="xiang.jsp" class="link-product-add-cart">快速查看</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="xiang.jsp">香水5 </a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥80.99</span>
						<del>￥99.71</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value="香水5" /> <input type="hidden"
									name="amount" value="30.99" /> <input type="hidden"
									name="discount_amount" value="1.00" /> <input type="hidden"
									name="currency_code" value="RMB" /> <input type="hidden"
									name="return" value=" " /> <input type="hidden"
									name="cancel_return" value=" " /> <input type="submit"
									name="submit" value="加入购物车" class="button" />
							</fieldset>
						</form>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-3 product-men">
			<div class="men-pro-item simpleCart_shelfItem">
				<div class="men-thumb-item">
					<img src="images/s6.jpg" alt="" class="pro-image-front"> <img
						src="images/s6.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="xiang.jsp" class="link-product-add-cart">快速 查看</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="xiang.jsp">香水6 </a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥120.99</span>
						<del>￥199.71</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value="香水6" /> <input type="hidden"
									name="amount" value="30.99" /> <input type="hidden"
									name="discount_amount" value="1.00" /> <input type="hidden"
									name="currency_code" value="RMB" /> <input type="hidden"
									name="return" value=" " /> <input type="hidden"
									name="cancel_return" value=" " /> <input type="submit"
									name="submit" value="加入购物车" class="button" />
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 product-men">
			<div class="men-pro-item simpleCart_shelfItem">
				<div class="men-thumb-item">
					<img src="images/s7.jpg" alt="" class="pro-image-front"> <img
						src="images/s7.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="xiang.jsp" class="link-product-add-cart">快速 查看</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="xiang.jsp">香水7</a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥160.99</span>
						<del>￥199.71</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value="香水7" /> <input type="hidden"
									name="amount" value="30.99" /> <input type="hidden" name="折扣"
									value="1.00" /> <input type="hidden" name="currency_code"
									value="RMB" /> <input type="hidden" name="return" value=" " />
								<input type="hidden" name="cancel_return" value=" " /> <input
									type="submit" name="submit" value="加入购物车" class="button" />
							</fieldset>
						</form>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-3 product-men">
			<div class="men-pro-item simpleCart_shelfItem">
				<div class="men-thumb-item">
					<img src="images/s8.jpg" alt="" class="pro-image-front"> <img
						src="images/s8.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="xiang.jsp" class="link-product-add-cart">快速查看</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="xiang.jsp">香水8</a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥180.99</span>
						<del>￥199.71</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value="香水8" /> <input type="hidden"
									name="amount" value="30.99" /> <input type="hidden" name="折扣"
									value="1.00" /> <input type="hidden" name="currency_code"
									value="RMB" /> <input type="hidden" name="return" value=" " />
								<input type="hidden" name="cancel_return" value=" " /> <input
									type="submit" name="submit" value="加入购物车" class="button" />
							</fieldset>
						</form>
					</div>

				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--香水商品结束-->

	<!--/grids 四个尾部小介绍-->
	<div class="coupons">
		<div class="coupons-grids text-center">
			<div class="w3layouts_mail_grid">
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<img src="images/logo4.jpg" width="70px" height="72px"
							align="center" />
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>维</h3>
						<p>品质保障 品质护航 购物无忧</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<img src="images/logo2.jpg" width="70px" height="70px"
							align="center" />
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>密</h3>
						<p>七天无理由退换货 为您提供售后无忧保障</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<img src="images/logo1.jpg" width="70px" height="72px"
							align="center" />
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>天</h3>
						<p>特色服务体验 为您呈现不一样的服务</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<img src="images/logo3.jpg" width="70px" height="72px"
							align="center" />
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>使</h3>
						<p>帮助中心 您的购物指南</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--grids-->
	<!-- footer -->
	<div class="footer">
		<div class="footer_agile_inner_info_w3l">
			<p class="copy-right">&copy 2017 维密天使。版权所有施余缘,何晨昊,蔡应时,陈浩,辛壮壮</p>
		</div>
	</div>
	<!-- //footer -->

	<!-- login -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-bottom">
								<h3>Sign up for free</h3>
								<form>
									<div class="sign-up">
										<h4>Email :</h4>
										<input type="text" value="Type here"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Type here';}"
											required="">
									</div>
									<div class="sign-up">
										<h4>Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required="">

									</div>
									<div class="sign-up">
										<h4>Re-type Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required="">

									</div>
									<div class="sign-up">
										<input type="submit" value="REGISTER NOW">
									</div>

								</form>
							</div>
							<div class="login-right">
								<h3>Sign in with your account</h3>
								<form>
									<div class="sign-in">
										<h4>Email :</h4>
										<input type="text" value="Type here"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Type here';}"
											required="">
									</div>
									<div class="sign-in">
										<h4>Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required=""> <a href="#">Forgot password?</a>
									</div>
									<div class="single-bottom">
										<input type="checkbox" id="brand" value=""> <label
											for="brand"><span></span>Remember Me.</label>
									</div>
									<div class="sign-in">
										<input type="submit" value="SIGNIN">
									</div>
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>
							By logging in you agree to our <a href="#">Terms and
								Conditions</a> and <a href="#">Privacy Policy</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //login -->
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<script src="js/minicart.min.js"></script>
	<script>
			// Mini Cart
			paypal.minicart.render({
				action: '#'
			});

			if(~window.location.search.indexOf('reset=true')) {
				paypal.minicart.reset();
			}
		</script>

	<!-- //cart-js -->

	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
			$('.counter').countUp();
		</script>
	<!-- //stats -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
			$(document).ready(function() {
				/*
					var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
					};
				*/

				$().UItoTop({
					easingType: 'easeOutQuart'
				});

			});
		</script>
	<!-- //here ends scrolling icon -->

	<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>