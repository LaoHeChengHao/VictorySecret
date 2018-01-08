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
			   	 当前用户:&nbsp;${login.userName}
			  |<a href="UsersServlet?method=lognOut"> &nbsp;注销</a>
			   </div>
			</c:if>
			
			</div>
		</div>
	</div>
	<!-- //header-bot -->