<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/singleCSS/style.css" />
<!--[if IE 6]>
    <script src="js/singlejs/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->
<!-- 一系列js样式 开始 -->
<script type="text/javascript" src="js/singlejs/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/singlejs/menu.js"></script>
<script type="text/javascript" src="js/singlejs/lrscroll_1.js"></script>
<script type="text/javascript" src="js/singlejs/n_nav.js"></script>
<link rel="stylesheet" type="text/css" href="css/singleCSS/ShopShow.css" />
<link rel="stylesheet" type="text/css"
	href="css/singleCSS/MagicZoom.css" />
<script type="text/javascript" src="js/singlejs/MagicZoom.js"></script>
<script type="text/javascript" src="js/singlejs/num.js">
	var jq = jQuery.noConflict();
</script>
<script type="text/javascript" src="js/singlejs/p_tab.js"></script>
<script type="text/javascript" src="js/singlejs/shade.js"></script>
<!-- 一系列js样式 结束 -->
<!-- 使用包含ajax的js -->
<script type="text/javascript" src="js/singlejs/AjaxMySingle.js"></script>
<script type="text/javascript">
/* 原本ajax放置此处  */
</script>

<title>详情页面</title>
</head>
<body>
	<%@include file="/basePages/base.jsp"%>
	<!--Begin Header Begin-->

	<div class="top">
		<div class="logo">
			<a href="Index.html"><img></a>
		</div>
		<!-- <div class="search">
			<div class="m_logo">
				<img src="images/logo样式.jpg">
			</div>
			<form>
				<input type="text" value="" class="s_ipt" />
            <input type="submit" value="搜索" class="s_btn" />
			</form>
		</div> -->
		<div class="i_car">
			<div class="car_t">
				购物车 [ <span>3</span> ]
			</div>
			<div class="car_bg">
				<!--Begin 购物车未登录 Begin-->
				<div class="un_login">
					还未登录！<a href="Login.html" style="color: #ff4e00;">马上登录</a> 查看购物车！
				</div>
				<!--End 购物车未登录 End-->
				<!--Begin 购物车已登录 Begin-->
				<ul class="cars">
					<li>
						<div class="img">
							<a href="#"><img src="images/car1.jpg" width="58" height="58" /></a>
						</div>
						<div class="name">
							<a href="#">${订单.id}</a>
						</div>
						<div class="price">
							<font color="#ff4e00">￥${订单.price}</font> X1
						</div>
					</li>
					<li>
						<div class="img">
							<a href="#"><img src="images/car2.jpg" width="58" height="58" /></a>
						</div>
						<div class="name">
							<a href="#">香奈儿（Chanel）邂逅活力淡香水50ml</a>
						</div>
						<div class="price">
							<font color="#ff4e00">￥399</font> X1
						</div>
					</li>
					<li>
						<div class="img">
							<a href="#"><img src="images/car2.jpg" width="58" height="58" /></a>
						</div>
						<div class="name">
							<a href="#">香奈儿（Chanel）邂逅活力淡香水50ml</a>
						</div>
						<div class="price">
							<font color="#ff4e00">￥399</font> X1
						</div>
					</li>
				</ul>
				<div class="price_sum">
					共计&nbsp; <font color="#ff4e00">￥</font><span>1058</span>
				</div>
				<div class="price_a">
					<a href="#">去购物车结算</a>
				</div>
				<!--End 购物车已登录 End-->
			</div>
		</div>
	</div>
	<!--End Header End-->
	<!--Begin Menu Begin-->
	<div class="menu_bg">
		<div class="menu">
			<!--Begin 商品分类详情 Begin-->
			<div class="nav">
				<div class="nav_t">商品详情</div>
				<div class="leftNav none"></div>
			</div>
			<!--End 商品分类详情 End-->
	<!-- 导航栏开始 -->
			<ul class="menu_r">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="about.jsp">品牌故事</a></li>
				<li><a href="RougeServlet?method=showAllRouge">唇部</a></li>
				<li><a href="SkinServlet?method=showAllSkin">护肤</a></li>
				<li><a href="PerfumeServlet?method=showAllPerfume">香水</a></li>
				<li><a href="#">内衣馆</a></li>
				<li><a href="#">运动馆</a></li>
			</ul>
	<!-- 导航栏结束 -->
			<!-- <div class="m_ad"></div>-->
		</div>
	</div>
	<!--End Menu End-->

	<!--End Header End-->
	<div class="i_bg">
		<div class="postion"></div>
		<!-- **************************商品详情开始 *************************-->
		<div class="content">
			<div id="tsShopContainer">
				<div id="tsImgS">
					<a href="${oneGood.picture}" title="Images" class="MagicZoom"
						id="MagicZoom"><img src="${oneGood.picture}" width="390"
						height="390" /></a>
				</div>
				<div id="tsPicContainer">
					<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
					<div id="tsImgSCon">
						<ul>
							<li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img
								src="${oneGood.picture}" tsImgS="${oneGood.picture}" width="79"
								height="79" /></li>
							<li onclick="showPic(1)" rel="MagicZoom"><img
								src="${oneGood.picture}" tsImgS="${oneGood.picture}" width="79"
								height="79" /></li>
							<li onclick="showPic(2)" rel="MagicZoom"><img
								src="${oneGood.picture}" tsImgS="${oneGood.picture}" width="79"
								height="79" /></li>
							<li onclick="showPic(3)" rel="MagicZoom"><img
								src="${oneGood.picture}" tsImgS="${oneGood.picture}" width="79"
								height="79" /></li>
							<li onclick="showPic(4)" rel="MagicZoom"><img
								src="images/ps1.jpg" tsImgS="images/ps1.jpg" width="79"
								height="79" /></li>
							<li onclick="showPic(5)" rel="MagicZoom"><img
								src="images/ps2.jpg" tsImgS="images/ps2.jpg" width="79"
								height="79" /></li>
							<li onclick="showPic(6)" rel="MagicZoom"><img
								src="images/ps3.jpg" tsImgS="images/ps3.jpg" width="79"
								height="79" /></li>
							<li onclick="showPic(7)" rel="MagicZoom"><img
								src="images/ps4.jpg" tsImgS="images/ps4.jpg" width="79"
								height="79" /></li>
						</ul>
					</div>
					<div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
				</div>
				<img class="MagicZoomLoading" width="16" height="16"
					src="images/loading.gif" alt="Loading..." />


			</div>

			<div class="pro_des">
				<div class="des_name">
					<p>${oneGood.name} ${oneGood.styleName}</p>
					“开业巨惠，南京专柜直供”，不光低价，“真”才靠谱！
				</div>
				<div class="des_price">
					本店价格：<b>￥${oneGood.price}</b><br />
					<!-- 消费积分：<span>28R</span> -->
				</div>
				<div class="des_choice">
					<span class="fl">型号选择：</span>
					<ul>
						<li class="checked">${oneGood.netWeight}
							<div class="ch_img"></div>
						</li>
						<%-- <li>${oneGood.netWeight}
							<div class="ch_img"></div>
						</li> --%>
						<%-- <li>${oneGood.netWeight}
							<div class="ch_img"></div>
						</li> --%>
					</ul>
				</div>
				<div class="des_choice">
					<span class="fl">颜色选择：</span>
					<ul>
						<li class="checked">${oneGood.colour}
							<div class="ch_img"></div>
						</li>
					</ul>
				</div>
				<div class="des_share">
					<div class="d_sh">
						分享
						<div class="d_sh_bg">
							<a href="#"><img src="images/sh_1.gif" /></a> <a href="#"><img
								src="images/sh_2.gif" /></a> <a href="#"><img
								src="images/sh_3.gif" /></a> <a href="#"><img
								src="images/sh_4.gif" /></a> <a href="#"><img
								src="images/sh_5.gif" /></a>
						</div>
					</div>
					<div class="d_care">
						<a onclick="ShowDiv('MyDiv','fade')">关注商品</a>
					</div>
				</div>
				<div class="des_join">
					<div class="j_nums">
						<input type="text" value="1" name="" class="n_ipt" /> <input
							type="button" value="" onclick="addUpdate(jq(this));"
							class="n_btn_1" /> <input type="button" value=""
							onclick="jianUpdate(jq(this));" class="n_btn_2" />
					</div>
					<span class="fl"><a onclick="ShowDiv_1('MyDiv1','fade1')"><img
							src="images/j_car.png" /></a></span>
				</div>
			</div>

			<div class="s_brand">
				<div class="s_brand_img">
					<img src="images/logo.jpg" width="188" height="132" />
				</div>
				<div class="s_brand_c">
					<a href="about.jsp">VICTORIA/品牌介绍</a>
				</div>
			</div>


		</div>
		<div class="content mar_20">
			<div class="l_history">
				<div class="fav_t">限量产品</div>
				<ul>
					<li>
						<div class="img">
							<a href="#"><img src="images/bottom3.jpg" width="185"
								height="162" /></a>
						</div>
						<div class="name">
							<a href="#">维密高级香水</a>
						</div>
						<div class="price">
							<font>￥<span>3684.00</span></font> &nbsp; 
						</div>
					</li>
					<li>
						<div class="img">
							<a href="#"><img src="images/bottom4.jpg" width="185"
								height="162" /></a>
						</div>
						<div class="name">
							<a href="#">维多利亚的秘密香水</a>
						</div>
						<div class="price">
							<font>￥<span>1768.00</span></font> &nbsp; 
						</div>
					</li>
					<li>
						<div class="img">
							<a href="#"><img src="images/bottom1.jpg" width="185"
								height="162" /></a>
						</div>
						<div class="name">
							<a href="#">维多利亚的秘密|香水</a>
						</div>
						<div class="price">
							<font>￥<span>6280.00</span></font> &nbsp; 
						</div>
					</li>
					<li>
						<div class="img">
							<a href="#"><img src="images/bottom2.jpg" width="185"
								height="162" /></a>
						</div>
						<div class="name">
							<a href="#">维多利亚的秘密|香水</a>
						</div>
						<div class="price">
							<font>￥<span>3628.00</span></font> &nbsp; 
						</div>
					</li>
					<li>
						<div class="img">
							<a href="#"><img src="images/bottom3.jpg" width="185"
								height="162" /></a>
						</div>
						<div class="name">
							<a href="#">维多利亚的秘密|香水</a>
						</div>
						<div class="price">
							<font>￥<span>3618.00</span></font> &nbsp; 
						</div>
					</li>
				</ul>
			</div>
			<!-- 商品详情、评论 开始 -->
			<div class="des_border">
				<div class="des_tit">
					<ul>
						<li class="current"><a href="#p_attribute">商品属性</a></li>
						<li><a href="#p_details">商品详情</a></li>
						<li><a href="#p_comment">商品评论</a></li>
					</ul>
				</div>
				<div class="des_con" id="p_attribute">

					<table border="0" align="center"
						style="width: 100%; font-family: '宋体'; margin: 10px auto;"
						cellspacing="0" cellpadding="0">
						<tr>
							<td>商品名称：${oneGood.name}</td>
							<td>商品编号：1546211</td> 
							<td>品牌： ${oneGood.brand}</td>
							<td>上架时间：${oneGood.time}</td>
						</tr>
						<tr>
							<td>商品毛重：${oneGood.netWeight}</td>
							<td>商品产地：法国</td> 
							<td>香调：${oneGood.typeEffect}</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>容量：${oneGood.netWeight}</td>
							<td>类型：${oneGood.styleName}</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</div>
			</div>

			<div class="des_border" id="p_details">
				<div class="des_t">商品详情</div>
				<div class="des_con">
					<table border="0" align="center"
						style="width: 745px; font-size: 14px; font-family: '宋体';"
						cellspacing="0" cellpadding="0">
						<tr>
							<td width="265"><img src="${oneGood.picture}" width="206"
								height="412" /></td>
							<td><b>${oneGood.name}</b><br />
								【商品规格】：${oneGood.netWeight}<br />
							<!--  【商品质地】：液体 -->
								<br /> 【商品日期】：${oneGood.time}<br /> <!-- 【商品产地】：法国 -->
								<br /> 【商品包装】：无外盒 无塑封<br /> 【商品香调】：${oneGood.typeEffect}<br />
								【适用人群】：适合女性（都市白领，性感，有女人味的成熟女性）<br /></td>
						</tr>
					</table>

					<p align="center">
						<img src="${oneGood.picturesId}${oneGood.id}/1.jpg" width="746"
							height="425" /><br /> <br /> 
						<img src="${oneGood.picturesId}${oneGood.id}/1.jpg" width="750"
							height="417" /><br /> <br /> 
						<img src="${oneGood.picturesId}${oneGood.id}/2.jpg" width="750"
							height="409" /><br /> <br />
					   <img src="${oneGood.picturesId}${oneGood.id}/3.jpg" width="750"
							height="409" />
					</p>

				</div>
			</div>

			<div class="des_border" id="p_comment">
				<div class="des_t">商品评论</div>
				<table border="0" class="jud_tab" cellspacing="0" cellpadding="0">
					<tr>
						<td width="175" class="jud_per">
							<p>80.0%</p>好评度
						</td>
						<td width="300">
							<table border="0" style="width: 100%;" cellspacing="0"
								cellpadding="0">
								<tr>
									<td width="90">好评<font color="#999999">（80%）</font></td>
									<td><img src="images/pl.gif" align="absmiddle" /></td>
								</tr>
								<tr>
									<td>中评<font color="#999999">（20%）</font></td>
									<td><img src="images/pl.gif" align="absmiddle" /></td>
								</tr>
								<tr>
									<td>差评<font color="#999999">（0%）</font></td>
									<td><img src="images/pl.gif" align="absmiddle" /></td>
								</tr>
							</table>
						</td>
						<td width="185" class="jud_bg">
							购买过的顾客，在收到商品才可以对该商品发表评论</td>
						<td class="jud_bg">您可对已购买商品进行评价<br /> <a href="addComment.jsp"><img
								src="images/images/btn_jud.gif" /></a></td>
					</tr>
				</table>
				<table border="0" class="jud_list"
					style="width: 100%; margin-top: 30px;" cellspacing="0"
					cellpadding="0">
					<%-- <tr valign="top">
						<td width="160"><img src="images/peo2.jpg" width="20"
							height="20" align="absmiddle" />&nbsp;1</td>
						<td width="180">颜色分类：<font color="#999999">${oneGood.colour}</font> <br />
							型号：<font color="#999999">${oneGood.netWeight}</font>
						</td>
						<td>送朋友，她很喜欢，大爱。 <br /> <font color="#999999">2015-09-24</font>
						</td>
					</tr> --%>
					
					<c:forEach items="${comments}" var="comment">
					<tr valign="top">
						<td width="160"><img src="${login.picture}" width="20"
							height="20" align="absmiddle" />&nbsp;${login.name}</td>
						<td width="180">颜色分类：<font color="#999999">${oneGood.colour}</font> <br />
							型号：<font color="#999999">${oneGood.netWeight}</font>
						</td>
						<td>${comment.content}<br /> 
						<font color="#999999">
							<fmt:formatDate value="${comment.time}" pattern="yyyy-MM-dd" type="date"/>
						</font>
						</td>
					</tr>
					
					</c:forEach>
					
					
				</table>
				<!-- 分页 -->
				<!-- <div class="pages">
					<a href="#" class="p_pre">上一页</a><a href="#" class="cur">1</a><a
						href="#">2</a><a href="#">3</a>...<a href="#">20</a><a href="#"
						class="p_pre">下一页</a>
				</div> -->

			</div>


		</div>
	</div>
	</div>
	</div>
	<!--*************************Begin 弹出层-收藏成功 Begin*****************************-->
	<div id="fade" class="black_overlay"></div>
	<div id="MyDiv" class="white_content">
		<div class="white_d">
			<div class="notice_t">
				<span class="fr" style="margin-top: 10px; cursor: pointer;"
					onclick="CloseDiv('MyDiv','fade')"><img
					src="images/shoucang.jpg" /></span>
			</div>
			<div class="notice_c">

				<table border="0" align="center" style="margin-top:;"
					cellspacing="0" cellpadding="0">
					<tr valign="top">
						<td width="40"><img src="images/" /></td>
						<td><span
							style="color: #3e3e3e; font-size: 18px; font-weight: bold;">您已成功收藏该商品</span><br />
							<a href="#">查看我的关注 >></a></td>
					</tr>
					<tr height="50" valign="bottom">
						<td>&nbsp;</td>
						<td><a href="#" class="b_sure">确定</a></td>
					</tr>
				</table>

			</div>
		</div>
	</div>
	<!--End 弹出层-收藏成功 End-->


	<!--**************Begin 弹出层-加入购物车 Begin***************-->
	<div id="fade1" class="black_overlay"></div>
	<div id="MyDiv1" class="white_content">
		<div class="white_d">
			<div class="notice_t">
				<span class="fr" style="margin-top: 10px; cursor: pointer;"
					onclick="CloseDiv_1('MyDiv1','fade1')"><img
					src="images/close.gif" /></span>
			</div>
			<div class="notice_c">

				<table border="0" align="center" style="margin-top:;"
					cellspacing="0" cellpadding="0">
					<tr valign="top">
						<td width="40"><img src="images/suc.png" /></td>
						<td><span
							style="color: #3e3e3e; font-size: 18px; font-weight: bold;">宝贝已成功添加到购物车</span><br />
							购物车共有1种宝贝（3件） &nbsp; &nbsp; 合计：1120元</td>
					</tr>
					<tr height="50" valign="bottom">
						<td>&nbsp;</td>
						<td><a href="#" class="b_sure">去购物车结算</a><a href="#"
							class="b_buy">继续购物</a></td>
					</tr>
				</table>

			</div>
		</div>
	</div>
	<!--End 弹出层-加入购物车 End-->



	<!--Begin Footer Begin -->
	<div class="b_btm_bg bg_color">
		<div class="b_btm">
			<table border="0"
				style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td width="72"><img src="images/b1.png" width="62" height="62" /></td>
					<td><h2>正品保障</h2>正品行货 放心购买</td>
				</tr>
			</table>
			<table border="0"
				style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td width="72"><img src="images/b2.png" width="62" height="62" /></td>
					<td><h2>优质快递</h2>优质快递 免运费</td>
				</tr>
			</table>
			<table border="0"
				style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td width="72"><img src="images/b3.png" width="62" height="62" /></td>
					<td><h2>高贵品质</h2>高贵品质 畅选无忧</td>
				</tr>
			</table>
			<table border="0"
				style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td width="72"><img src="images/b4.png" width="62" height="62" /></td>
					<td><h2>准时送达</h2>收货时间由你做主</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="b_nav">
		<div class="btmbg">
			<div class="btm">
				备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018
				尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
				<img src="images/b_1.gif" width="98" height="33" /><img
					src="images/b_2.gif" width="98" height="33" /><img
					src="images/b_3.gif" width="98" height="33" /><img
					src="images/b_4.gif" width="98" height="33" /><img
					src="images/b_5.gif" width="98" height="33" /><img
					src="images/b_6.gif" width="98" height="33" />
			</div>
		</div>
		<!--End Footer End -->
	</div>
</body>

<script src="js/singlejs/ShopShow.js"></script>

<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>