<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评论页面</title>
</head>
<body>

	<form action="CommentServlet?method=addComment" method="post" >
		<table align="center" border="1">
			<tr>
				<td colspan="2" align="center" >发表评论</td>
			</tr>
			<tr>
				<td>评论区</td>
				<td>
					<textarea rows="8" cols="28" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="发布评论" />
				</td>
			</tr>
		
		</table>
	
	
	
	</form>



</body>
</html>