<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 引入界面样式 -->
<link href="css/login.css" rel='stylesheet' type='text/css' />
<!--网页标题栏的logo-->
<link rel="shortcut icon" href="images/log-vs.png" type="image/x-icon" />
<!-- 引入界面的动态设置 -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/JavaScript" src="static/js/userLogin.js" ></script>
<script type="text/javascript">
function login()
 {
	var $username = $("#username").val();
	var $password = $("#password").val();
	var $check = $("#check");
	var $check2 = $("#check2");
	/* 验证用户名 */
	if($username.trim().length==0)
	{
		$check.text("用户名不能为空!");
		return;
	}else if($username.trim().length<2){
		$check.text("用户名错误!");
		return;
	}else
	{
		$check.text("");
	}
	/* 验证密码 */
	if($password.trim().length==0)
	{
		$check2.text("密码不能为空!");
		return;
	}else if($password.trim().length<6){
		$check2.text("密码不符合规定!");
		return;
	}else
	{
		$check2.text("");
	}
	
	$("#form").submit();
 } 


</script>

</head>
<body>
	<!--User-Login-->
	<h1>用户登录</h1>
	<div class="avtar">
		<img src="images/log-vs.png" />
	</div>
	<div class="login-form" style="width: 600px;height: 355px;">
		<form action="UsersServlet?method=login" method="post" id="form">
			<div id="msg"><%=request.getAttribute("msg")==null? "请输入用户名和密码": request.getAttribute("msg")%></div>
			<div class="form-text" > 
				用户名：<input id="userName"  name="username"  type="text" placeholder="用户名4个字符以上"/>
				<div id="check" style="font-size: 10px" align="center"></div>
				密&nbsp;&nbsp;&nbsp;码：<input id="password" name="password"  type="password" placeholder="密码4个字符以上"/>
				<div class="notes"><div id="check2" style="font-size: 10px"></div></div>
			</div>
			<div class="form-text1">
			<input type="button" value="登录" onclick="login()" class="btn-login">
			<p>没有账户?<a href="register.jsp">注册</a></p> 
			</div>
		</form>
	</div>
	<!--/User-Login-->
	<!--start-copyright-->
	<!-- <div class="copy-right">
		<p>版权所有</p><span>施余缘</span>
	</div> -->
	<!--//end-copyright-->
</body>
</html>