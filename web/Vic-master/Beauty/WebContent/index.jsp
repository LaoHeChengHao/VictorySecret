<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>VICTORIA'S SECRET 维多利亚的秘密</title>
<!-- 每个页面都有的用户登录注册，以及登录注册成功后的情况 -->
<%@include file="/basePages/base.jsp"%>
<!--  -->
<script type="text/javascript" src="js/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
	/* $("tab1").click(function(){
	
	 });
	 window.ready=function(){
	 alert("aaaa");
	 a();
	 } */
	/* function a(){   */
/* 	$.ajax({
		url : "PerfumeServlet?method=showNewPerfume",//servlet文件的名称  
		type : "post",
		dataType : "JSON",
		success : function(data) {
			console.log("====" + data);

			var str = "";
			$.each(data, function(i, item) {
				/* console.log(item.pId); 
				str = str + "<h1>" + item.pId + "</h1>";

			})

			$("#demo12").html(str);
		}
	}); */

	/*        }   */
</script>
<!-- banner 导航分类栏-->

<c:if test="${empty good}">
	<%
	/* 当域中为空时，转发到GoodServlet，再转发回来   */
	 request.getRequestDispatcher("/GoodServlet?method=showNewGood").forward(request, response);
	%>
</c:if>

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
					<li class=" menu__item"><a class="menu__link" href="about.jsp">品牌信息</a></li>

					<!--唇部 有下拉列表-->
					<li class="dropdown menu__item"><a href="#"
						class="dropdown-toggle menu__link" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">唇部 <span
							class="caret"></span></a>
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
										<li><a href="SkinServlet?method=showAllSkin">护手霜</a></li>
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
					<li class=" menu__item"><a class="menu__link"
						href="PerfumeServlet?method=showAllPerfume">香水 </a></li>
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

	<div class="clearfix"></div>
</div>
</div>
<!-- //banner-top -->
<!-- banner -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<div class="container">
				<div class="carousel-caption"></div>
			</div>
		</div>
	</div>
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

			<a href="#">
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
			<a href="#">
				<div class="bb-middle-agileits-w3layouts grid">
					<figure class="effect-roxy"> <img src="images/bottom3.jpg"
						alt=" " class="img-responsive" /> <figcaption>
					<h3>
						<span>V</span>ICTORIA'S SECRET
					</h3>
					<!--<p>增长 55%</p>--> </figcaption> </figure>
				</div>
			</a>
		</div>
		<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
			<!--第三张-->
			<a href="#">
				<div class="bb-middle-agileits-w3layouts grid" id="three">
					<figure class="effect-roxy"> <img src="images/bottom4.jpg"
						alt=" " class="img-responsive" /> <figcaption>
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
		<a href="#"><img src="images/bot_1.jpg" alt=" "> <!--<h4>Flat <span>50%</span> offer</h4>--></a>
	</div>
	<div class="col-md-6 multi-gd-img multi-gd-text ">
		<a href="#"><img src="images/bot_2.jpg" alt=" "> <!--<h4>Flat <span>50%</span> offer</h4>--></a>
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
				<li>香水</li>
			</ul>
			<div class="resp-tabs-container">
				<!--/tab_one ******************唇部位置*******************-->
				<div class="tab1">
				 <c:if test="${!empty good}">
					<c:forEach items="${good.rouge}" var="rouge">
					<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="${rouge.picture}" alt="" class="pro-image-front"> <img
									src="${rouge.picture}" alt="" class="pro-image-back">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
									<!-- RougeServlet?method=showOneRouge&id=${rouge.rId} -->
										<a href="GoodServlet?method=showOneGood&id=${rouge.rId}" class="link-product-add-cart">快速 查看</a>
									</div>
								</div>
								<span class="product-new-top">New</span>

							</div>
							<div class="item-info-product ">
								<h4>
									<a href="GoodServlet?method=showOneGood&id=${rouge.rId}">${rouge.styleName}</a>
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
												name="item_name" value="${rouge.styleName}" /> <input type="hidden"
												name="amount" value="${rouge.price}" /> <input type="hidden"
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
					</c:forEach>
					</c:if>
					<div class="clearfix"></div>
				</div>
				<!--//tab_one************** -->

				<!--/tab_two ************** ************** 身体 护理位置****************************  -->
					<div class="tab2">
					<c:if test="${!empty good}">
					<c:forEach items="${good.skin}" var="skin"> 
					<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="${skin.picture}" alt="" class="pro-image-front"> <img
									src="${skin.picture}" alt="" class="pro-image-back">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="GoodServlet?method=showOneGood&id=${skin.sId}" class="link-product-add-cart">快速 查看</a>
									</div>
								</div>
								<span class="product-new-top">New</span>

							</div>
							<div class="item-info-product ">
								<h4>
									<a href="GoodServlet?method=showOneGood&id=${skin.sId}">${skin.styleName}</a>
								</h4>
								<div class="info-product-price">
									<span class="item_price">￥${skin.price}</span>
								</div>
								<div
									class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
									<form action="#" method="post">
										<fieldset>
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="business" value=" " /> <input type="hidden"
												name="item_name" value="${skin.styleName}" /> <input type="hidden"
												name="amount" value="${skin.price}" /> <input type="hidden"
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
					</c:forEach>
					</c:if>
					<div class="clearfix"></div>
				</div>

				<!--//tab_two************** 护肤结束************** -->


				<!--//tab_three************** 香水位置************** -->
				
				<div class="tab4">
					<c:if test="${!empty good.perfume||good.rouge||good.skin}">
					<c:forEach items="${good.perfume}" var="perfume"> 
					<div class="col-md-3 product-men" id="perfume">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="${perfume.picture}" alt="" class="pro-image-front">
								<img src="${perfume.picture}" alt="" class="pro-image-back">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a
											href="GoodServlet?method=showOneGood&id=${perfume.pId}"
											class="link-product-add-cart">快速 查看</a>
									</div>
								</div>
								<span class="product-new-top">New</span>

							</div>
							<div class="item-info-product ">
								<h4>
									<a href="GoodServlet?method=showOneGood&id=${perfume.pId}">${perfume.styleName}</a>
								</h4>
								<div class="info-product-price">
									<span class="item_price">￥${perfume.price}</span>
								</div>
								<div
									class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
									<form action="#" method="post">
										<fieldset>
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="business" value=" " /> <input type="hidden"
												name="item_name" value="${perfume.styleName}" /> <input type="hidden"
												name="amount" value="${perfume.price}" /> <input type="hidden"
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
					 </c:forEach> 
					</c:if>
					<div class="clearfix"></div>
				</div>
				<!--//tab_three-->
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
		<p class="copy-right">&copy 2017 维密天使。版权所有施余缘,蔡应时,陈浩,辛壮壮</p>
	</div>
</div>
<!-- //footer -->

<!--去顶部的小按钮-->
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span
	id="toTopHover" style="opacity: 1;"> </span>
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
<script>
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true, // 100% fit in a container
			closed : 'accordion', // Start closed if in accordion view
			activate : function(event) { // Callback function if tab is switched
				var $tab = $(this);
				var $info = $('#tabInfo');
				var $name = $('span', $info);
				$name.text($tab.text());
				$info.show();
			}
		});
		$('#verticalTab').easyResponsiveTabs({
			type : 'vertical',
			width : 'auto',
			fit : true
		});
	});
</script>
<!-- //script for responsive tabs -->
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
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
	$(document).ready(function() {

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- //here ends scrolling icon -->

<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>