<%@page import="entity.Rouge"%>
<%@page import="dao.impl.RougeDaoImpl"%>
<%@page import="java.util.List"%>
<%@page import="dao.RougeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>VICTORIA'S SECRET 维多利亚的秘密</title>
<%@include file="/basePages/base.jsp"%>
<%
	RougeDao rou = new RougeDaoImpl();
	//使用service层中的方法，获取所有香水信息
	List<Rouge> allRouge = rou.getAllRouge();
%>
<!-- //header-bot结束 最顶端:搜索框+logo+登录+注册+购物车-->
<!-- banner 导航分类栏-->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left" align="left">
			<nav class="navbar navbar-default">
			<div class="collapse navbar-collapse menu--shylock"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav menu__list">
					<li class="active menu__item"><a class="menu__link"
						href="index.jsp">首页 <span class="sr-only">(current)</span></a></li>
					<li class=" menu__item"><a class="menu__link" href="about.jsp">品牌信息</a></li>
					<!--唇部 有下拉列表-->
					<li class="dropdown menu__item menu__item--current"><a
						href="chun.jsp" class="dropdown-toggle menu__link"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">唇部 <span class="caret"></span></a>
						<ul class="dropdown-menu multi-column columns-3">
							<div class="agile_inner_drop_nav_info">
								<!--口红的小图标-->
								<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
									<a href="RougeServlet?method=showAllRouge"><img src="images/top2.jpg" alt=" " /></a>
								</div>
								<div class="col-sm-3 multi-gd-img">
									<ul class="multi-column-dropdown">
										<li><a href="RougeServlet?method=showAllRouge">口红</a></li>
										<li><a href="RougeServlet?method=showAllRouge">唇彩</a></li>
										<li><a href="RougeServlet?method=showAllRouge">唇釉</a></li>
										<li><a href="RougeServlet?method=showAllRouge">唇膏</a></li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
						</ul></li>
					<!--身体护理-->
					<li class="dropdown menu__item"><a href="#"
						class="dropdown-toggle menu__link" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">身体 护理<span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu multi-column columns-3">
							<div class="agile_inner_drop_nav_info">
								<div class="col-sm-3 multi-gd-img">
									<ul class="multi-column-dropdown">
										<li><a href="SkinServlet?method=showAllSkin">面霜</a></li>
										<li><a href="SkinServlet?method=showAllSkin">身体乳</a></li>
									</ul>
								</div>
								<!--护肤的小图标-->
								<div class="col-sm-6 multi-gd-img multi-gd-text ">
									<a href="SkinServlet?method=showAllSkin"><img src="images/top1.jpg" alt=" " /></a>
								</div>
								<div class="clearfix"></div>
							</div>
						</ul></li>
					<!--香水-->
					<li class=" menu__item"><a class="menu__link" href="PerfumeServlet?method=showAllPerfume">香水
					</a></li>
					<!-- 链接到另外两个门店 -->
					<li class=" menu__item"><a class="menu__link" href="#"
						style="color: red;">内衣馆 </a></li>
					<li class=" menu__item"><a class="menu__link" href="#"
						style="color: red;">运动馆 </a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<!--<div class="clearfix"></div>-->
</div>
</div>
<!-- //banner-top -->
<!-- banner -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators 小圆圈按钮-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1" class=""></li>
		<li data-target="#myCarousel" data-slide-to="2" class=""></li>
		<li data-target="#myCarousel" data-slide-to="3" class=""></li>
		<li data-target="#myCarousel" data-slide-to="4" class=""></li>
	</ol>
	<!--轮播图位置开始-->
	<div class="carousel-inner" role="listbox">
		<div class="item chunitem1 active">
			<div class="container">
				<div class="carousel-caption"></div>
			</div>
		</div>
		<div class="item chunitem2">
			<div class="container">
				<div class="carousel-caption"></div>
			</div>
		</div>
		<div class="item chunitem3">
			<div class="container">
				<div class="carousel-caption"></div>
			</div>
		</div>
		<div class="item chunitem4">
			<div class="container">
				<div class="carousel-caption"></div>
			</div>
		</div>
		<div class="item chunitem5">
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
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">下一个</span>
	</a>
	<!-- The Modal -->
</div>
<!-- //banner -->
<!--唇部商品开始 banner-bootom-w3-agileits -->
<!-- <div class="banner-bootom-w3-agileits"> -->
<div class="tab1">
<%
		if (allRouge == null) {
	%>
	<h1>商品暂时未上架</h1>
	<%
		} else {
	%>
	<!-- 从数据库中遍历出信息 -->
	<c:forEach items="${allRouge}" var="rouge">
		<!-- <div class="container"> -->
			<div class="single-pro">
				<div class="col-md-3 product-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="${rouge.picture}" alt="" class="pro-image-front"> <img
								src="${rouge.picture}" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="single.jsp" class="link-product-add-cart">快速查看</a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a href="single.jsp">${rouge.styleName}</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥${rouge.price}</span>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<form action="#" method="post">
									<fieldset>
										<input type="hidden" name="cmd" value="_cart" /> <input
											type="hidden" name="add" value="1" /> <input type="hidden"
											name="business" value=" " /> <input type="hidden"
											name="item_name" value="${rouge.styleName}" /> <input
											type="hidden" name="amount" value="${rouge.price}" /> <input
											type="hidden" name="discount_amount" value="1.00" /> <input
											type="hidden" name="currency_code" value="USD" /> <input
											type="hidden" name="return" value=" " /> <input
											type="hidden" name="cancel_return" value=" " /> <input
											type="submit" name="submit" value="加入购物车" class="button" />
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	<div class="clearfix"></div>
	<%
		}
	%>
</div>
<!-- //mens -->
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
		<p class="copy-right">&copy 2017 维密天使. 版权所有 施余缘,何晨昊,蔡应时,陈浩,辛壮壮</p>
	</div>
</div>
<!-- //footer -->
<!--
<!-- login
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
								<div class="login">
									<div class="login-bottom">
										<h3>Sign up for free</h3>
										<form>
											<div class="sign-up">
												<h4>Email :</h4>
												<input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-up">
												<h4>Password :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<h4>Re-type Password :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<input type="submit" value="REGISTER NOW" >
											</div>
											
										</form>
									</div>
									<div class="login-right">
										<h3>Sign in with your account</h3>
										<form>
											<div class="sign-in">
												<h4>Email :</h4>
												<input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-in">
												<h4>Password :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												<a href="#">Forgot password?</a>
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<div class="sign-in">
												<input type="submit" value="SIGNIN" >
											</div>
										</form>
									</div>
									<div class="clearfix"></div>
								</div>
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>-->
<!-- //login -->
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span
	id="toTopHover" style="opacity: 1;"> </span>
</a>
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<script src="js/responsiveslides.min.js"></script>
<script>
	// You can also use "$(window).load(function() {"
	$(function() {
		// Slideshow 4
		$("#slider3").responsiveSlides({
			auto : true,
			pager : true,
			nav : false,
			speed : 500,
			namespace : "callbacks",
			before : function() {
				$('.events').append("<li>before event fired.</li>");
			},
			after : function() {
				$('.events').append("<li>after event fired.</li>");
			}
		});
	});
</script>
<script src="js/modernizr.custom.js"></script>
<!-- Custom-JavaScript-File-Links -->
<!-- cart-js
	<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>

	<!-- //cart-js -->
<!---->
<script type='text/javascript'>
	//<![CDATA[ 
	$(window).load(
			function() {
				$("#slider-range").slider(
						{
							range : true,
							min : 0,
							max : 9000,
							values : [ 1000, 7000 ],
							slide : function(event, ui) {
								$("#amount").val(
										"$" + ui.values[0] + " - $"
												+ ui.values[1]);
							}
						});
				$("#amount").val(
						"$" + $("#slider-range").slider("values", 0) + " - $"
								+ $("#slider-range").slider("values", 1));

			});//]]>
</script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<!---->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
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
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- //here ends scrolling icon -->

<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<canvas id="c_n13" width="1364" height="396"
	style="position: fixed; top: 0px; left: 0px; z-index: -1; opacity: 0.5;"></canvas>
</body>
</html>
