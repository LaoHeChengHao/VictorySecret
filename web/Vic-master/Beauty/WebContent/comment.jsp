<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试评论</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	text-align: center;
}

td {
	padding-left: 8px;
	padding-right: 8px;
}
</style>

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("#show tr:even").css("background-color", "#89D0FE");
				$("#show tr:first").css("background-color", "#CCCDFE").css(
						"font-weight", "bold");
			});
	// 可公用，任何页面引入即可点属性进行使用 var searchJson = {};getSearchJson(); function getSearchJson(){ var searchArr = decodeURI(location.search).substr(1).split("&"); for(var i in searchArr){ searchJson[searchArr[i].split("=")[0]] = searchArr[i].split("=")[1] } } // 使用示例 $("#productInfo").html("<label>产品代号：</label><span>"+searchJson.productCode+"</span>\ <label>产品名称：</label><span>"+searchJson.productName+"</span>");
</script>
<script type="text/javascript">
$(function(){
	$("#btnadd").click(function(){
		addComment();
	});
	/* 添加评论的方法  */
	function addComment(){
		var msg=$("#content").val();
		if(msg!=""){
			$.post(
				"PerfumeCommentServlet/addPerfumeComment",
				{"msg":msg},
				function(data){
					 
				}
			);
		}else{
			$("#txtmsg").text("评论内容不能为空");
			$("#content").focus();
		}
	}
})

</script>
</head>

<body>
	<div>
		<h1>评论列表</h1>
		<input type="button" value="返回商品列表" onclick="history.back(-1)" />
	</div>
	<c:if test="${empty showAllComment}">
		<h1>此商品暂无评论</h1>
	</c:if>
	<c:if test="${!empty showAllComment}">
		<table border="1" align="center" id="show">
			<tr>
				<td>评论编号</td>
				<td>评论内容</td>
				<td>评论人</td>
				<td>评论商品</td>
				<td>评论时间</td>
			</tr>
			<c:forEach items="${showAllComment}" var="Comments">
				<tr>
					<td align="center">${Comments.cId}</td>
					<td>${Comments.content}</td>
					<td>${Comments.uId}</td>
					<td>${Comments.gId}</td>
					<td><fmt:formatDate value="${Comments.time}"
							pattern="yyyy-mm-dd hh:mm:ss" type="date" /></td>
				</tr>
				<c:if test="${!empty login.userName}">
					<tr>
						<td align="center">评论人：${login.userName}</td>
						<td >评论人编号：
						<input type="text" name="id" value="${login.id}" readonly/>
						</td>
						<td >评论商品编号：
						<input type="text" name="gid" value="${Comments.gId}" readonly/>
						</td>
						<td>
						评论内容：
							<textarea rows="100" cols="200" name="content" id="content">
								
							</textarea>
						</td>
						<td id="txtmsg"></td>
						<td>
							<input type="button" id="btnadd" value="评论"/>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>