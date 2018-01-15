<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<!--网页标题栏的logo-->
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />
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
</head>
<body>
	<!-- header-bot 最顶端:搜索框+logo+登录+注册+购物车 -->
	<div class="header-bot" id="home">
		<div class="header-bot_inner_wthreeinfo_header_mid">
			<div class="show">
				<div class="show-show">
					<a href="index.jsp"><span>2018</span>维密鉴赏大会</a>
				</div>
			</div>
			<!--logo-->
			<div class="logo_pic">
				<a href="index.jsp"><img src="images/VSLogo.png" align="center" /></a>
			</div>
			<!--登录+注册+购物车-->
			<div class="login_resiger">
			<!-- 当用户为空时，显示登录注册 
			   注意：该login由Servlet转发给JSP页面的
			-->
			<c:if test="${empty login}">
				<div class="login">
					<a href="login.jsp"  > 登录</a>
				</div>
				<div class="resiger">
					<a href="register.jsp"  > 注册</a>
				</div>
			</c:if>
				<div class="car">
					<a href="#" class="fa fa-phone" aria-hidden="true"> 购物车</a>
				</div>
			</div>
			<div class="clearfix">
			<!-- 当用户不为空时，显示用户名和注销 -->
			<c:if test="${!empty login}">
			   <div style="float: right;margin-top: 30px">
			   <img alt="" src="${login.picture}" width="80px" height="80px"/>
			   	 当前用户:&nbsp;${login.userName}
			  |<a href="UsersServlet?method=lognOut"> &nbsp;注销</a>
			   </div>
			</c:if>
			
			</div>
		</div>
	</div>
	<!-- //header-bot -->