<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="shortcut icon" href="images/qq.png" type="image/x-icon" />

<title>品牌故事</title>

<link rel="shortcut icon" href="images/QQ图片20171214190210.png" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--<link href="css/font-awesome.css" rel="stylesheet"> -->
<link href="css/easy-responsive.css" rel='stylesheet' type='text/css'/>
<!--网页标题栏的logo-->
	<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />


</head>
<body>


<!-- header-bot 最顶端:搜索框+logo+登录+注册+购物车 -->
		<!--<div class="header-bot">-->			
			<div style=" margin: 0 auto; width: 90%;  margin-top: 20px; margin-bottom: 25px;">
				
				<!--搜索框-->
				<!--<div class="col-md-4 header-middle">--><div style="text-align: center;">
			   <!-- <form action="#" method="post">
					<input type="search" name="search" placeholder="搜索...." required="">-->
					<!--<input type="submit" value=" ">--><img src="images/logo001.jpg" />
			   <!-- </form>-->
		       </div>
		       <!--logo-->
				<!--<div class="logo_pic">
					<a href="index.html" ><img src="images/logo8.jpg" align="center"/></a>
				</div>-->
				<!--登录+注册+购物车-->
				<div class="login_resiger">
					<div class="login">
						<a href="#" data-toggle="modal" data-target="#myModal" > 登录</a>
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
		<!--</div>-->
		<!-- //header-bot -->
		
		<!-- //header-bot -->
<!-- banner 导航分类栏-->
<div class="ban-top">
			<div class="container">
				<div class="top_nav_left" align="left">
					<nav class="navbar navbar-default">						
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav menu__list">
									<li class="active menu__item ">
										<a class="menu__link" href="index.jsp">MOTION</a>
									</li>
									<li class=" menu__item menu__item--current">
										<a class="menu__link" href="about.jsp">品牌故事<span class="sr-only">(current)</span></a>
									</li>

									<li class="dropdown menu__item">
										<a class="menu__link" href="Bra.jsp">Bra专业运动文胸<span class="sr-only">(current)</span></a>
										
									</li>

									<li class="dropdown menu__item">
										<a class="menu__link" href="contact.jsp">限量发售<span class="sr-only">(current)</span></a>
										
									</li>
									
									<!--转接到香熏和内衣页面-->
					<li class=" menu__item"><a class="menu__link" href="#">香薰</a></li>
					<li class=" menu__item"><a class="menu__link" href="#">内衣</a></li>
					
									<!--香水-->
									<!--<li class=" menu__item">
										<a class="menu__link" href="xiang.html">香水 </a>
									</li>-->
								</ul>
							</div>
						</div>
					</nav>
				</div>

				<div class="clearfix"></div>
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
						<h3 class="agileinfo_sign">立即 <span>登录</span></h3>
									<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required="">
								<label>姓名</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> 
								<label>邮箱</label>
								<span></span>
							</div> 
							<input type="submit" value="登 录">
						</form>
														<div class="clearfix"></div>
														<p><a href="#" data-toggle="modal" data-target="#myModal2" > Don't have an account?</a></p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="images/log_pic.jpg" alt=" "/>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
<!-- //Modal1 -->
<!-- Modal2 -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
						<div class="modal-body modal-body-sub_agile">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">立即 <span>注册</span></h3>
									<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required="">
								<label>姓名</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> 
								<label>邮箱</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<input type="password" name="password" required=""> 
								<label>密码</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<input type="password" name="Confirm Password" required=""> 
								<label>再次 确认</label>
								<span></span>
							</div> 
							<input type="submit" value="注 册">
						</form>
														<div class="clearfix"></div>
														<p><a href="#">点击注册，同意协议</a></p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="images/log_pic.jpg" alt=" "/>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
<!-- //Modal2 -->
<!-- /banner_bottom_agile_info -->
<!--<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>关于 <span>我们 </span></h3>
			<!--/w3_short-->
				<!-- <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

						   <ul class="w3_short">
								<li><a href="index.html">首页</a><i>|</i></li>
								<li>关于</li>
							</ul>
						 </div>
				</div>
	   <!--//w3_short-->
	<!--</div>
</div-->
<!-- /banner_bottom_agile_info -->
    <div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				<div class="col-md-6 ab_pic_w3ls">
				   	<img src="images/lunbo002.jpg" alt=" " class="img-responsive" />
				</div>
				 <div class="col-md-6 ab_pic_w3ls_text_info">
				    <h5>关于我们 <span>Victoria's Secret</span> </h5>
					<p>维多利亚的秘密（英文：Victoria's Secret，简称“VS”）是美国的一家连锁女性成衣零售店，主要经营内衣和文胸等。
产品种类包括了女士内衣、文胸、内裤、泳装、休闲女装、女鞋、化妆品及各种配套服装、豪华短裤、香水化妆品以及相关书籍等，是全球最著名的、性感内衣品牌之一。2002年它推出的镶嵌宝石、价值1000万美元的胸罩更是轰动美国和巴西。</p>
					<p>维多利亚的秘密（Victoria's Secret）对于性感美艳的定义早已昭然若揭，天使的长发自然微卷，像刚刚睡醒尚未梳洗或才经历一场完美的性爱。面容自然媚态，红绯绯的脸庞和雾茫茫的双眸象刚刚接吻过的嘴唇。</p>
				</div>
				  <div class="clearfix"></div>
			</div>    
            <div class="banner_bottom_agile_info_inner_w3ls">
    	           <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
						<figure class="effect-roxy">
							<img src="images/01.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3><span>维</span>密天使</h3>
								<p>新品上市</p>
							</figcaption>			
						</figure>
					</div>
					 <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
						<figure class="effect-roxy">
							<img src="images/02.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3><span>维</span>密天使</h3>
								<p>新品上市</p>
							</figcaption>			
						</figure>
					</div>
					
					<div class="clearfix"></div>
		    </div> 
		 </div> 
    </div>
	<!-- team -->
<div class="banner_bottom_agile_info team">
	<div class="container">
	            <h3 class="wthree_text_info">亚洲维密 <span>天使团队</span></h3>
			<div class="inner_w3l_agile_grids">
					<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/ximengyao.jpg" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>奚梦瑶</h4>
								<p>添加简单介绍</p>						
							</div>
							          </div>
						     </div>
			         	</div>
						<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/liuwen.JPEG" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>刘雯</h4>
								<p>添加简单介绍</p>						
							</div>
							          </div>
						     </div>
			         	</div>
						<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/hesui.jpg" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>何穗</h4>
								<p>添加简单介绍</p>						
							</div>
							          </div>
						     </div>
			         	</div>
						<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/juxiaowen.jpeg" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>雎晓雯</h4>
								<p>添加简单介绍</p>						
							</div>
							          </div>
						     </div>
			         	</div>
					<div class="clearfix"> </div>
				</div>
	       </div>
		</div>
<!-- //team -->

	<!-- schedule-bottom 销售量部分-->
	<div class="schedule-bottom">
		<div class="col-md-6 agileinfo_schedule_bottom_left">
			<img src="images/11.jpg" alt=" " class="img-responsive" />
		</div>
		<div class="col-md-6 agileits_schedule_bottom_right">
			<div class="w3ls_schedule_bottom_right_grid">
				<h3>销售量<span>50%</span> /本周</h3>
				<p>维多利亚的秘密(Victoria's Secret)的产品种类包括了女士内衣、文胸、内裤、泳装、休闲女装、女鞋、化妆品及各种配套服装、豪华短裤、香水化妆品以及相关书籍等，是全球最著名的、性感内衣品牌之一。
				   2002年它推出的镶嵌宝石、价值1000万美元的胸罩更是轰动美国和巴西。</p>
				
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- //schedule-bottom -->
  <!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
	   <div class="container">
	    <!-- <h3 class="wthree_text_info">时尚 <span>趋势</span></h3>-->
	
		<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
			<a href="chun.html">
			   <div class="bb-left-agileits-w3layouts-inner grid">
					<figure class="effect-roxy">
							<!--<img src="images/12.jpg" alt=" " class="img-responsive" />-->
							<figcaption>
								<h3><span>销</span>售量</h3>
								<!--<p>增长 55%</p>-->
							</figcaption>			
						</figure>
			    </div>
			</a>
		</div>
		<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
		       <div class="bb-middle-agileits-w3layouts grid">
			           <figure class="effect-roxy">
							<img src="images/bottom3.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3><span>销</span>售量</h3>
							</figcaption>			
						</figure>
		        </div>
		      <div class="bb-middle-agileits-w3layouts forth grid">
						<figure class="effect-roxy">
							<img src="images/bottom4.jpg" alt=" " class="img-responsive">
							<figcaption>
								<h3><span>销</span>售量</h3>
								<p>增长 55%</p>
							</figcaption>		
						</figure>
					</div>
		<div class="clearfix"></div>
	</div>
    </div>
</div>
<!--/grids-->
      <div class="agile_last_double_sectionw3ls">
            <div class="col-md-6 multi-gd-img multi-gd-text ">
					<a href="chun.html"><img src="images/02.jpg" alt=" "><h4>Flat <span>50%</span> offer</h4></a>
					
			</div>
			 <div class="col-md-6 multi-gd-img multi-gd-text ">
					<a href="chun.html"><img src="images/01.jpg" alt=" "><h4>Flat <span>50%</span> offer</h4></a>
			</div>
			<div class="clearfix"></div>
	   </div>							
<!--/grids-->
	<!-- /we-offer -->
		<div class="sale-w3ls">
			<div class="container">
				<h6> <span></span></h6>
				<!--<a class="hvr-outline-out button2" href="single.html"></a>-->
			</div>
		</div>
	<!-- //we-offer -->
<!--/grids 四个尾部小介绍-->
		<div class="coupons">
			<div class="coupons-grids text-center">
				<div class="w3layouts_mail_grid">					
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<img src="images/logo01 (2).jpg" width="70px" height="72px" align="center"/>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>维</h3>
							<p>品质保障 品质护航 购物无忧</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<img src="images/logo02 (2).jpg" width="70px" height="70px" align="center"/>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>密</h3>
							<p>七天无理由退换货 为您提供售后无忧保障</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<img src="images/logo03 (2).jpg" width="70px" height="72px" align="center"/>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>天</h3>
							<p>特色服务体验 为您呈现不一样的服务</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<img src="images/logo04 (2).jpg" width="70px" height="72px" align="center"/>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>使</h3>
							<p>帮助中心 您的购物指南</p>
						</div>
					</div>
					<div class="clearfix"> </div>
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
										<h3>免费注册</h3>
										<form>
											<div class="sign-up">
												<h4>邮箱 :</h4>
												<input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-up">
												<h4>密码 :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<h4>再次 输入:</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<input type="submit" value="立即 注册" >
											</div>
											
										</form>
									</div>
									<div class="login-right">
										<h3>登录 您的账号</h3>
										<form>
											<div class="sign-in">
												<h4>邮箱 :</h4>
												<input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-in">
												<h4>密码 :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												<a href="#">忘记密码?</a>
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>记住我.</label>
											</div>
											<div class="sign-in">
												<input type="submit" value="登录" >
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
			</div>
<!-- //login -->
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->	
<!--	<!-- cart-js 
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

	<!-- //cart-js --> -->

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
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap.js"></script>


</body>
</html>