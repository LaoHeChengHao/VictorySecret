<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords"
	content="User Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="css/login.css" rel='stylesheet' type='text/css' />

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>


<script type="text/javascript">
/**
 * 使用ajax实现用户的登录功能
 */

 function login()
 {
	var $userName = $("#userName").val();
	var $password = $("#password").val();
	var $check = $("#check");
	var $check2 = $("#check2");
	if($userName.trim().length==0)
	{
		$check.text("用户名不能为空!");
		return;
	}
	else
	{
		$check.text("");
	}
	if($password.trim().length==0)
	{
		$check2.text("密码不能为空!");
		return;
	}
	else
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
		<img src="images/avtar.png" />
	</div>
	<div class="login-form" style="width: 500px">
		<form action="UsersServlet?method=login" method="post" id="form">
			<div class="form-text" >
			
				用户名：<input id="userName"  name="userName"  type="text" class="text" value=""
					onfocus="this.value = '';"
				>
				<span id="check" style="font-size: 10px"></span>
				<br />
				
				密   码：<input id="password" name="password"  type="password" value="***" onfocus="this.value = '';"
					>
				<span id="check2" style="font-size: 10px"></span>
			</div>
			<input type="button" value="登录" onclick="login()">
		</form>
	</div>
	<!-- 	<p>没有账户?<a href="#">注册</a></p> -->
	<!--/User-Login-->
	<!--start-copyright-->
	<div class="copy-right">
		<p>版权所有</p>
	</div>
	<!--//end-copyright-->
</body>






</html>