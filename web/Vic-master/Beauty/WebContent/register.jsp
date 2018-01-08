<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<!--网页标题栏的logo-->
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />
<link href="css/register.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	function register() {
		var nametip=checkUserName();
		var passtip=checkPassword();
		var repasstip=checkRepass();
		var emailtip=checkEmail();
		var teltip=checkTel();
		if(nametip && passtip && repasstip && emailtip && teltip){
		//验证表单通过,接下来提交表单
			$("#form").submit();
		}else{
			alert("请核对信息");
		}
		/* return nametip && passtip && repasstip && emailtip && teltip;*/	
	}
	/* 验证用户名 */
	function checkUserName(){	
		var userName = $("#userName").val();
		var check1 = $("#check1");
		if(userName.trim().length==0&userName.trim().length<2){
			/* alert("用户名不能为空"); */
			check1.text("用户名不能为空或少于两位字符");
			return false; 
		}else if(userName!=null){
			 check1.text(""); 
			//Ajax实现
			//1.获取XMLHTTPRequest对象
			//专门写个createXMLHttPRequest方法来获取
			var req=createXMLHttpRequest();
			//2.准备URL 数据 
			var url="/Beauty/UsersServlet?method=checkUserName & t="+Math.radom();
			var data="userName="+userName;
			//不写默认为ture，为异步
			//设置请求信息 请求信息的提交方式，信息地址和
			req.open("POST",url);
			//3.使用回调函数
			req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			req.onreadystatechange=callback;
			//4.发送请求
			req.send(data);
			/* 使用POST方式发送请求
			var url = "userServlet";//服务器端URL地址
			xmlHttpRequest.open("POST", url, true);
			xmlHttpRequest.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			var data = "name=" + name;//需要发送的数据信息,name为用户名文本框获取的值
			xmlHttpRequest.send(data);
			*/
			//Ajax 回调函数
			function callback() {
				if (req.readyState == 4 && req.status == 200) {
					var data = req.responseText;
					if (data == "true") {
						check1.text("用户名已被使用！");
						return false;
					} else {
						check1.text("用户名可以使用！");
						return true;
					}
				}
			}
		}
	}
	//获取XMLHttpRequest对象
	 function createXMLHttpRequest(){
		 //1.如果当前浏览器为IE6以上浏览器或者其他浏览器
		 if(window.XMLHttpRequest){
			 return new XMLHttpRequest();
		 }else{
			 //2.如果当前浏览器为IE6以下浏览器
			 return new ActiveXObject("Microsoft.XMLHTTP");
		 }
		 
	 }
	/* 验证密码 */
	function checkPassword(){
		var $check2 = $("#check2");
		var $password = $("#password").val();
		if($password.trim().length==0){
			/* alert("密码不能为空"); */
			$check2.text("密码不能为空");
			return false; 
		}else if($password.trim().length<4){
			/* alert("密码不能少于四个字符"); */
			$check2.text("密码不能少于四个字符");
			return false; 
		}else{
			$check2.text("OK");
			return true; 
		}
	}
	
	/* 验证再次输入密码  */
	function checkRepass(){
		var $check3 = $("#check3");
		var $repassword = $("#repassword").val();
		var $password = $("#password").val();
		if($repassword.trim().length==0){
			$check3.text("请再次输入密码");
			return false; 
		}else if($repassword!=$password){
			/* alert("两个输入密码不匹配"); */
			$check3.text("两个输入密码不匹配");
			return false; 
		}else{
			$check3.text("OK");
			return true; 
		}
	}
	
	/* 验证邮箱  */
	function checkEmail(){
		var $check4 = $("#check4");
		var $email = $("#email").val();
		var pattern = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/; //验证邮箱正则表达式
		if($email.trim().length==0){
			/* alert("请输入邮箱"); */
			$check4.text("请输入邮箱");
			return false; 
		}else if(!pattern.test($email)){
			/* alert("请输入正确格式的邮箱"); */
			$check4.text("请输入正确格式的邮箱");
			return false; 
		}else{
			$check4.text("OK");
			return true; 
		}
	}
		
	/* 验证手机号 */
	 function checkTel(){
		var $check5 = $("#check5");
		var $telephone = $("#telephone").val();
		var pattern = /^1[34578]\d{9}$/; //验证手机号正则表达式
		if($telephone.trim().length==0){
			/* alert("请输入电话号码"); */
			$check5.text("请输入电话号码");
			return false; 
		}else if(!pattern.test($telephone)){
			/* alert("电话号码格式不正确"); */
			$check5.text("电话号码格式不正确");
			return false; 
		}else{
			$check5.text("OK");
			return true; 
		}
	  }

</script>

</head>
<body>
    <div id="headFont">
		<span>用户注册</span>
	</div>
	<form action="UsersServlet?method=register" method="post" id="form">
		<div class="form-context">
		<table align="center" border="0" width=100% height=100% align="center">
			<tr>
				<td>用户名</td>
				<td>
					<input type="text" name="userName" id="userName"
					placeholder="用户名4个字符以上" required="required"
					pattern="^[a-z0-9_-]{3,16}$/" 
					onblur="checkUserName()" oninput="checkUserName()"/>
				</td>
				<td id="check1"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td>
					<input type="password" name="password" id="password"
					placeholder="必须大于5位" required="required"  
					onblur="checkPassword()" oninput="checkPassword()"/>
				</td>
				<td id="check2"></td>
			</tr>
			<tr>
				<td>再次输入密码</td>
				<td>
					<input type="password" name="repassword" id="repassword"
					placeholder="请与第一次输入保持一致" required="required" 
					 onblur="checkRepass()" oninput="checkRepass()"/>
				</td>
				<td id="check3"></td>
			</tr>
			<tr>
				<td>email</td>
				<td>
					<input type="text" name="email" id="email"
					placeholder="XXX@XXX.XX" required="required" 
					 onblur="checkEmail()" oninput="checkEmail()"/>
				</td>
				<td id="check4"></td>
			</tr>
			<tr>
				<td>电话号码</td>
				<td>
				   <input type="text" name="telephone" id="telephone"
					placeholder="输入正确格式的手机号" required="required"
					maxlength="11"  onblur="checkTel()" oninput="checkTel()"/>
				</td>
				<td id="check5"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				   <input type="button" value="注册"
					onclick="register()" required="required" class="btn-register"/>
				</td>
			</tr>
		</table>
    </div>
	</form>
</body>
</html>