<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>详情页</title>
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
							href="index.jsp">首页 <span class="sr-only">(current)</span></a></li>
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
						<li class="dropdown menu__item menu__item--current"><a
							href="#" class="dropdown-toggle menu__link"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">身体 护理<span class="caret"></span></a>
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
	<!-- //banner-top 导航分类栏-->

</body>
</html>
