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
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
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
						<li class="active menu__item menu__item--current"><a
							class="menu__link" href="index.jsp">首页 <span class="sr-only">(current)</span></a>
						</li>
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
						<li class=" menu__item"><a class="menu__link"
							href="xiang.jsp">香水 </a></li>
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
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->

	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!--轮播图小圆点<!-- Indicators -->
		<!--<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				<li data-target="#myCarousel" data-slide-to="3" class=""></li>
				<li data-target="#myCarousel" data-slide-to="4" class=""></li>
			</ol>-->
		<!--轮播图位置开始-->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<!--<h3>The Biggest <span>Sale</span></h3>
						<p>Special for today</p>-->
						<!--<a class="hvr-outline-out button2" href="mens.jsp">立即购买 </a>-->
					</div>
				</div>
			</div>
			<!--<div class="item item2"> 
				<div class="container">
					<div class="carousel-caption">
						<h3>Summer <span>Collection</span></h3>
						<p>New Arrivals On Sale</p>
						<a class="hvr-outline-out button2" href="mens.jsp">立即购买</a>
					</div>
				</div>
			</div>
			<div class="item item3"> 
				<div class="container">
					<div class="carousel-caption">
						<h3>The Biggest <span>Sale</span></h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2" href="mens.jsp">立即购买 </a>
					</div>
				</div>
			</div>
			<div class="item item4"> 
				<div class="container">
					<div class="carousel-caption">
						<h3>Summer <span>Collection</span></h3>
						<p>New Arrivals On Sale</p>
						<a class="hvr-outline-out button2" href="mens.jsp">立即购买 </a>
					</div>
				</div>
			</div>
			<div class="item item5"> 
				<div class="container">
					<div class="carousel-caption">
						<h3>The Biggest <span>Sale</span></h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2" href="mens.jsp">立即购买 </a>
					</div>
				</div>
			</div> -->
		</div>
		<!--轮播图位置结束-->
		<!--<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">下一个</span>
			</a>-->
		<!-- The Modal -->
	</div>
	<!-- //banner -->
	<div class="banner_bottom_agile_info">
		<div class="container">
			<div class="banner_bottom_agile_info_inner_w3ls">
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<figure class="effect-roxy"> <img src="images/bottom1.jpg"
						alt=" " class="img-responsive" /> <figcaption>
					<h3>
						<span>维</span>密天使
					</h3>
					<p>新品上市</p>
					</figcaption> </figure>
				</div>
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<figure class="effect-roxy"> <img src="images/bottom2.jpg"
						alt=" " class="img-responsive" /> <figcaption>
					<h3>
						<span>维</span>密天使
					</h3>
					<p>新品上市</p>
					</figcaption> </figure>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- schedule-bottom  销售量部分-->
	<div class="schedule-bottom">
		<div class="col-md-6 agileinfo_schedule_bottom_left">
			<img src="images/mid.jpg" alt=" " class="img-responsive" />
		</div>
		<div class="col-md-6 agileits_schedule_bottom_right">
			<div class="w3ls_schedule_bottom_right_grid">
				<h3>
					销售量<span>50%</span> /本周
				</h3>
				<p>维多利亚的秘密(Victoria's
					Secret)的产品种类包括了女士内衣、文胸、内裤、泳装、休闲女装、女鞋、化妆品及各种配套服装、豪华短裤、香水化妆品以及相关书籍等，是全球最著名的、性感内衣品牌之一。
					2002年它推出的镶嵌宝石、价值1000万美元的胸罩更是轰动美国和巴西。</p>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //schedule-bottom -->
	<!-- banner-bootom-w3-agileits 时尚趋势 大图展示位置-->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<h3 class="wthree_text_info">
				时尚 <span>趋势</span>
			</h3>
			<!--第一张-->
			<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">

				<a href="womens.jsp">
					<div class="bb-left-agileits-w3layouts-inner grid">
						<figure class="effect-roxy"> <img src="images/bb1.jpg"
							alt=" " class="img-responsive" /> <figcaption>
						<h3>
							<span>V</span>ICTORIA'S SECRET
						</h3>
						</figcaption> </figure>
					</div>
				</a>
			</div>

			<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
				<!--第二张-->
				<a href="chun.jsp">
					<div class="bb-middle-agileits-w3layouts grid">
						<figure class="effect-roxy"> <img
							src="images/bottom3.jpg" alt=" " class="img-responsive" /> <figcaption>
						<h3>
							<span>V</span>ICTORIA'S SECRET
						</h3>
						<!--<p>增长 55%</p>--> </figcaption> </figure>
					</div>
				</a>
			</div>
			<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
				<!--第三张-->
				<a href="chun.jsp">
					<div class="bb-middle-agileits-w3layouts grid" id="three">
						<figure class="effect-roxy"> <img
							src="images/bottom4.jpg" alt=" " class="img-responsive" /> <figcaption>
						<h3>
							<span>V</span>ICTORIA'S SECRET
						</h3>
						<!--<p>增长 55%</p>--> </figcaption> </figure>
					</div>
				</a>
			</div>

		</div>
	</div>
	<!--/grids 两张美妆特效图-->
	<div class="agile_last_double_sectionw3ls">
		<div class="col-md-6 multi-gd-img multi-gd-text ">
			<a href="body.jsp"><img src="images/bot_1.jpg" alt=" "> <!--<h4>Flat <span>50%</span> offer</h4>--></a>
		</div>
		<div class="col-md-6 multi-gd-img multi-gd-text ">
			<a href="body.jsp"><img src="images/bot_2.jpg" alt=" "> <!--<h4>Flat <span>50%</span> offer</h4>--></a>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--/grids 两张特效图结束-->
	<!-- /new_arrivals -->
	<div class="new_arrivals_agile_w3ls_info">
		<div class="container">
			<h3 class="wthree_text_info">
				<span>新品</span>上市
			</h3>
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li>唇部</li>
					<li>身体 护理</li>
					<!--<li> 化妆包&配饰</li>-->
					<li>香水</li>
				</ul>
				<div class="resp-tabs-container">

					<!--/tab_one 唇部位置-->
					<div class="tab1">
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/m1.jpg" alt="" class="pro-image-front">
									<img src="images/m1.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">天使翅膀口红</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥245.99</span>
										<del>￥399.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="天使翅膀口红" /> <input type="hidden"
													name="amount" value="30.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/m2.jpg" alt="" class="pro-image-front">
									<img src="images/m2.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">维多利亚的秘密 莹亮唇彩</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥45.99</span>
										<del>￥69.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="维多利亚的秘密  莹亮唇彩" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/m3.jpg" alt="" class="pro-image-front">
									<img src="images/m3.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">维多利亚的秘密 深透水润</a>
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
													name="item_name" value="维多利亚的秘密 深透水润" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/m4.jpg" alt="" class="pro-image-front">
									<img src="images/m4.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">维多利亚的秘密 轻柔淡彩</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥190.99</span>
										<del>￥159.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="维多利亚的秘密 轻柔淡彩" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/m5.jpg" alt="" class="pro-image-front">
									<img src="images/m5.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">维多利亚的秘密 深透水润</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥60.99</span>
										<del>￥90.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="维多利亚的秘密 深透水润" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/m7.jpg" alt="" class="pro-image-front">
									<img src="images/m7.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">维多利亚的秘密 莹亮唇彩</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥160.99</span>
										<del>￥290.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="维多利亚的秘密 莹亮唇彩" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/m6.jpg" alt="" class="pro-image-front">
									<img src="images/m6.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">维多利亚的秘密 轻柔淡彩 3.1g</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥30.99</span>
										<del>￥50.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="维多利亚的秘密 轻柔淡彩 3.1g" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/m8.jpg" alt="" class="pro-image-front">
									<img src="images/m8.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">维多利亚的秘密 深透水润</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥260.99</span>
										<del>￥390.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="维多利亚的秘密 深透水润" /> <input
													type="hidden" name="amount" value="30.99" /> <input
													type="hidden" name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="加入购物车" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<!--//tab_one-->

					<!--/tab_two 身体 护理位置-->
					<div class="tab2">
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w1.jpg" alt="" class="pro-image-front">
									<img src="images/w1.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">护肤1</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥130.99</span>
										<del>￥189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="护肤1" /> <input type="hidden"
													name="amount" value="30.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/w2.jpg" alt="" class="pro-image-front">
									<img src="images/w2.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">护肤2</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥140.99</span>
										<del>￥189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="护肤2" /> <input type="hidden"
													name="amount" value="30.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/w3.jpg" alt="" class="pro-image-front">
									<img src="images/w3.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">护肤3</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥150.99</span>
										<del>￥189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="护肤3 " /> <input type="hidden"
													name="amount" value="530.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/w4.jpg" alt="" class="pro-image-front">
									<img src="images/w4.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">护肤4</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥120.99</span>
										<del>￥189.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="护肤4" /> <input type="hidden"
													name="amount" value="30.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/w5.jpg" alt="" class="pro-image-front">
									<img src="images/w5.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">护肤4</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥220.99</span>
										<del>￥389.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="护肤4" /> <input type="hidden"
													name="amount" value="30.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/w6.jpg" alt="" class="pro-image-front">
									<img src="images/w6.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">护肤5</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥320.99</span>
										<del>￥489.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="护肤5" /> <input type="hidden"
													name="amount" value="30.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/w7.jpg" alt="" class="pro-image-front">
									<img src="images/w7.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">护肤6</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥100.99</span>
										<del>￥159.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="护肤6" /> <input type="hidden"
													name="amount" value="30.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/w8.jpg" alt="" class="pro-image-front">
									<img src="images/w8.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">快速 查看</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.jsp">护肤7</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">￥130.99</span>
										<del>￥169.71</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value=" " /> <input type="hidden"
													name="item_name" value="护肤7" /> <input type="hidden"
													name="amount" value="30.99" /> <input type="hidden"
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
													type="submit" name="submit" value="加入购物车" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>

					<!--//tab_two 护肤结束-->


					<!--//tab_three香水位置-->
					<div class="tab4">

						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s1.jpg" alt="" class="pro-image-front">
									<img src="images/s1.jpg" alt="" class="pro-image-back">
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
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/s2.jpg" alt="" class="pro-image-front">
									<img src="images/s2.jpg" alt="" class="pro-image-back">
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
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/s3.jpg" alt="" class="pro-image-front">
									<img src="images/s3.jpg" alt="" class="pro-image-back">
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
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/s4.jpg" alt="" class="pro-image-front">
									<img src="images/s4.jpg" alt="" class="pro-image-back">
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
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/s5.jpg" alt="" class="pro-image-front">
									<img src="images/s5.jpg" alt="" class="pro-image-back">
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
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/s6.jpg" alt="" class="pro-image-front">
									<img src="images/s6.jpg" alt="" class="pro-image-back">
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
													name="discount_amount" value="1.00" /> <input
													type="hidden" name="currency_code" value="RMB" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " /> <input
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
									<img src="images/s7.jpg" alt="" class="pro-image-front">
									<img src="images/s7.jpg" alt="" class="pro-image-back">
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
													name="amount" value="30.99" /> <input type="hidden"
													name="折扣" value="1.00" /> <input type="hidden"
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
									<img src="images/s8.jpg" alt="" class="pro-image-front">
									<img src="images/s8.jpg" alt="" class="pro-image-back">
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
													name="amount" value="30.99" /> <input type="hidden"
													name="折扣" value="1.00" /> <input type="hidden"
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
						<div class="clearfix"></div>
					</div>
					<!--//tab_four-->
				</div>
			</div>
		</div>
	</div>
	<!-- //new_arrivals -->
	<!-- /we-offer -->
	<div class="sale-w3ls">
		<div class="container">
			<!--字体-->
			<!--<h6>We Offer Flat <span>40%</span> Discount</h6>-->

			<!--<a class="hvr-outline-out button2" href="xiang.jsp">立即 购买 </a>-->
		</div>
	</div>
	<!-- //we-offer -->
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

	<!--去顶部的小按钮-->
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<script src="js/modernizr.custom.js"></script>
	<!-- Custom-JavaScript-File-Links -->
	<!-- cart-js 购物车-->
	<!--<script src="js/minicart.min.js"></script>-->
	<!--<script>
			// Mini Cart
paypal.minicart.render({
	action: '#'
});

if(~window.location.search.indexOf('reset=true')) {
	paypal.minicart.reset();
}</script>-->

	<!-- //cart-js -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>$(document).ready(function() {
	$('#horizontalTab').easyResponsiveTabs({
		type: 'default', //Types: default, vertical, accordion           
		width: 'auto', //auto or any width like 600px
		fit: true, // 100% fit in a container
		closed: 'accordion', // Start closed if in accordion view
		activate: function(event) { // Callback function if tab is switched
			var $tab = $(this);
			var $info = $('#tabInfo');
			var $name = $('span', $info);
			$name.text($tab.text());
			$info.show();
		}
	});
	$('#verticalTab').easyResponsiveTabs({
		type: 'vertical',
		width: 'auto',
		fit: true
	});
});</script>
	<!-- //script for responsive tabs -->
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>$('.counter').countUp();</script>
	<!-- //stats -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>
	<script type="text/javascript">jQuery(document).ready(function($) {
	$(".scroll").click(function(event) {
		event.preventDefault();
		$('html,body').animate({
			scrollTop: $(this.hash).offset().top
		}, 1000);
	});
});</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">$(document).ready(function() {

	$().UItoTop({
		easingType: 'easeOutQuart'
	});

});</script>
	<!-- //here ends scrolling icon -->

	<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>