<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	function register()
	{
		
		//验证表单通过,接下来提交表单
		$("#form").submit();
	
	}


</script>

</head>
<body>
	<form action="UsersServlet?method=register" method="post" id="form">
		<table align="center" border="1">
			<tr>
				<td>用户名</td>
				<td>
					<input type="text" name="userName" id="userName" />
				</td>
			</tr>
			<tr>
				<td>密码</td>
				<td>
					<input type="password" name="password" id="password" />
				</td>
			</tr>
			<tr>
				<td>再次输入密码</td>
				<td>
					<input type="password" name="repassword" id="repassword" />
				</td>
			</tr>
			<tr>
				<td>email</td>
				<td>
					<input type="text" name="email" id="email" />
				</td>
			</tr>
			<tr>
				<td>电话号码</td>
				<td>
					<input type="text" name="telephone" id="telephone" />
				</td>
			</tr>
			<tr>
				
				<td colspan="2" align="center">
					<input type="button" value="注册"  onclick="register()" />
				</td>
			</tr>
		</table>
		
		
	</form>
</body>
</html>