<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="shortcut icon" href="images/qq.png" type="image/x-icon" />

<title>Ʒ�ƹ���</title>

<link rel="shortcut icon" href="images/QQͼƬ20171214190210.png" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--<link href="css/font-awesome.css" rel="stylesheet"> -->
<link href="css/easy-responsive.css" rel='stylesheet' type='text/css'/>
<!--��ҳ��������logo-->
	<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />


</head>
<body>


<!-- header-bot ���:������+logo+��¼+ע��+���ﳵ -->
		<!--<div class="header-bot">-->			
			<div style=" margin: 0 auto; width: 90%;  margin-top: 20px; margin-bottom: 25px;">
				
				<!--������-->
				<!--<div class="col-md-4 header-middle">--><div style="text-align: center;">
			   <!-- <form action="#" method="post">
					<input type="search" name="search" placeholder="����...." required="">-->
					<!--<input type="submit" value=" ">--><img src="images/logo001.jpg" />
			   <!-- </form>-->
		       </div>
		       <!--logo-->
				<!--<div class="logo_pic">
					<a href="index.html" ><img src="images/logo8.jpg" align="center"/></a>
				</div>-->
				<!--��¼+ע��+���ﳵ-->
				<div class="login_resiger">
					<div class="login">
						<a href="#" data-toggle="modal" data-target="#myModal" > ��¼</a>
					</div>
					<div class="resiger">
						<a href="#" data-toggle="modal" data-target="#myModal2"> ע��</a>
					</div>
					<div class="car">
						<a href="#" class="fa fa-phone" aria-hidden="true"> ���ﳵ</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		<!--</div>-->
		<!-- //header-bot -->
		
		<!-- //header-bot -->
<!-- banner ����������-->
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
										<a class="menu__link" href="about.jsp">Ʒ�ƹ���<span class="sr-only">(current)</span></a>
									</li>

									<li class="dropdown menu__item">
										<a class="menu__link" href="Bra.jsp">Braרҵ�˶�����<span class="sr-only">(current)</span></a>
										
									</li>

									<li class="dropdown menu__item">
										<a class="menu__link" href="contact.jsp">��������<span class="sr-only">(current)</span></a>
										
									</li>
									
									<!--ת�ӵ���Ѭ������ҳ��-->
					<li class=" menu__item"><a class="menu__link" href="#">��޹</a></li>
					<li class=" menu__item"><a class="menu__link" href="#">����</a></li>
					
									<!--��ˮ-->
									<!--<li class=" menu__item">
										<a class="menu__link" href="xiang.html">��ˮ </a>
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
<!--���Ϸ���¼�ĵ���¼�-->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
						<div class="modal-body modal-body-sub_agile">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">���� <span>��¼</span></h3>
									<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required="">
								<label>����</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> 
								<label>����</label>
								<span></span>
							</div> 
							<input type="submit" value="�� ¼">
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
						<h3 class="agileinfo_sign">���� <span>ע��</span></h3>
									<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required="">
								<label>����</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> 
								<label>����</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<input type="password" name="password" required=""> 
								<label>����</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<input type="password" name="Confirm Password" required=""> 
								<label>�ٴ� ȷ��</label>
								<span></span>
							</div> 
							<input type="submit" value="ע ��">
						</form>
														<div class="clearfix"></div>
														<p><a href="#">���ע�ᣬͬ��Э��</a></p>

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
			<h3>���� <span>���� </span></h3>
			<!--/w3_short-->
				<!-- <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

						   <ul class="w3_short">
								<li><a href="index.html">��ҳ</a><i>|</i></li>
								<li>����</li>
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
				    <h5>�������� <span>Victoria's Secret</span> </h5>
					<p>ά�����ǵ����ܣ�Ӣ�ģ�Victoria's Secret����ơ�VS������������һ������Ů�Գ������۵꣬��Ҫ��Ӫ���º����صȡ�
��Ʒ���������Ůʿ���¡����ء��ڿ㡢Ӿװ������Ůװ��ŮЬ����ױƷ���������׷�װ�������̿㡢��ˮ��ױƷ�Լ�����鼮�ȣ���ȫ���������ġ��Ը�����Ʒ��֮һ��2002�����Ƴ�����Ƕ��ʯ����ֵ1000����Ԫ�����ָ��Ǻ䶯�����Ͱ�����</p>
					<p>ά�����ǵ����ܣ�Victoria's Secret�������Ը����޵Ķ���������Ȼ���ң���ʹ�ĳ�����Ȼ΢����ո�˯����δ��ϴ��ž���һ���������԰���������Ȼ��̬�����糵����Ӻ���ãã��˫����ոս��ǹ����촽��</p>
				</div>
				  <div class="clearfix"></div>
			</div>    
            <div class="banner_bottom_agile_info_inner_w3ls">
    	           <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
						<figure class="effect-roxy">
							<img src="images/01.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3><span>ά</span>����ʹ</h3>
								<p>��Ʒ����</p>
							</figcaption>			
						</figure>
					</div>
					 <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
						<figure class="effect-roxy">
							<img src="images/02.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3><span>ά</span>����ʹ</h3>
								<p>��Ʒ����</p>
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
	            <h3 class="wthree_text_info">����ά�� <span>��ʹ�Ŷ�</span></h3>
			<div class="inner_w3l_agile_grids">
					<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/ximengyao.jpg" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>������</h4>
								<p>��Ӽ򵥽���</p>						
							</div>
							          </div>
						     </div>
			         	</div>
						<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/liuwen.JPEG" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>����</h4>
								<p>��Ӽ򵥽���</p>						
							</div>
							          </div>
						     </div>
			         	</div>
						<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/hesui.jpg" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>����</h4>
								<p>��Ӽ򵥽���</p>						
							</div>
							          </div>
						     </div>
			         	</div>
						<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/juxiaowen.jpeg" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>������</h4>
								<p>��Ӽ򵥽���</p>						
							</div>
							          </div>
						     </div>
			         	</div>
					<div class="clearfix"> </div>
				</div>
	       </div>
		</div>
<!-- //team -->

	<!-- schedule-bottom ����������-->
	<div class="schedule-bottom">
		<div class="col-md-6 agileinfo_schedule_bottom_left">
			<img src="images/11.jpg" alt=" " class="img-responsive" />
		</div>
		<div class="col-md-6 agileits_schedule_bottom_right">
			<div class="w3ls_schedule_bottom_right_grid">
				<h3>������<span>50%</span> /����</h3>
				<p>ά�����ǵ�����(Victoria's Secret)�Ĳ�Ʒ���������Ůʿ���¡����ء��ڿ㡢Ӿװ������Ůװ��ŮЬ����ױƷ���������׷�װ�������̿㡢��ˮ��ױƷ�Լ�����鼮�ȣ���ȫ���������ġ��Ը�����Ʒ��֮һ��
				   2002�����Ƴ�����Ƕ��ʯ����ֵ1000����Ԫ�����ָ��Ǻ䶯�����Ͱ�����</p>
				
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- //schedule-bottom -->
  <!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
	   <div class="container">
	    <!-- <h3 class="wthree_text_info">ʱ�� <span>����</span></h3>-->
	
		<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
			<a href="chun.html">
			   <div class="bb-left-agileits-w3layouts-inner grid">
					<figure class="effect-roxy">
							<!--<img src="images/12.jpg" alt=" " class="img-responsive" />-->
							<figcaption>
								<h3><span>��</span>����</h3>
								<!--<p>���� 55%</p>-->
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
								<h3><span>��</span>����</h3>
							</figcaption>			
						</figure>
		        </div>
		      <div class="bb-middle-agileits-w3layouts forth grid">
						<figure class="effect-roxy">
							<img src="images/bottom4.jpg" alt=" " class="img-responsive">
							<figcaption>
								<h3><span>��</span>����</h3>
								<p>���� 55%</p>
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
<!--/grids �ĸ�β��С����-->
		<div class="coupons">
			<div class="coupons-grids text-center">
				<div class="w3layouts_mail_grid">					
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<img src="images/logo01 (2).jpg" width="70px" height="72px" align="center"/>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>ά</h3>
							<p>Ʒ�ʱ��� Ʒ�ʻ��� ��������</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<img src="images/logo02 (2).jpg" width="70px" height="70px" align="center"/>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>��</h3>
							<p>�����������˻��� Ϊ���ṩ�ۺ����Ǳ���</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<img src="images/logo03 (2).jpg" width="70px" height="72px" align="center"/>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>��</h3>
							<p>��ɫ�������� Ϊ�����ֲ�һ���ķ���</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<img src="images/logo04 (2).jpg" width="70px" height="72px" align="center"/>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>ʹ</h3>
							<p>�������� ���Ĺ���ָ��</p>
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
		<p class="copy-right">&copy 2017 ά����ʹ����Ȩ����ʩ��Ե,�γ��,��Ӧʱ,�º�,��׳׳</p>
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
										<h3>���ע��</h3>
										<form>
											<div class="sign-up">
												<h4>���� :</h4>
												<input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-up">
												<h4>���� :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<h4>�ٴ� ����:</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<input type="submit" value="���� ע��" >
											</div>
											
										</form>
									</div>
									<div class="login-right">
										<h3>��¼ �����˺�</h3>
										<form>
											<div class="sign-in">
												<h4>���� :</h4>
												<input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-in">
												<h4>���� :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												<a href="#">��������?</a>
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>��ס��.</label>
											</div>
											<div class="sign-in">
												<input type="submit" value="��¼" >
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