/**
 * 使用ajax实现用户的登录功能
 */
$(document).ready(function() {
					// 用户登录绑定失去焦点事件
					$("#userName").blur(checkusername);// 登录用户名
					$("#password").blur(checkpwd);// 登录密码
					
					$("#two").click(function() {
						var name = $("#userName").val();
						var pwd = $("#password").val();
						// 提交表单, 调用验证函数
						var flags = true;
						if (!checkusername())
							flags = false;
						if (!checkpwd())
							flags = false;
						
						if (flags == false) {
							alert("请输入用户名和密码!");
							}else{
								$.ajax({
									"url" : "http://localhost:8080//Beauty/UsersServlet",
									"type" : "post", 
									"data" : "userName=" + name + "&password=" + pwd,          
									"dataType" : "json", 
									"success" : callBack,   
									"error" : function() {
										alert("系统繁忙!");
									}
								});
								function callBack(loginTag) {
									if (loginTag == false) {
										alert("用户名密码错误!");
									} 
									else {
										
										if (loginTag.roleId <= 2) {
											window.location = "http://localhost:8080/tiantmusic/tiantmusic/tiantmusic.jsp";
										}else{
											window.location = "http://localhost:8080//Beauty/index.jsp";
										}
									}
								}
							}
					});
		});
//验证登录用户名
function checkusername(){
	var name = $("#userName");
	if (name == "") {
	$("#check").text("用户名不能为空!");
	return false;
	} else {
	$("#check").text("");
	}
	return true;
}
//验证登录密码
function checkpwd(){
	var pwd = $("#password");
	if (pwd=="") {
		$("#check2").text("密码不能为空!");
		return false;
	}else{
		$("#check2").text("");
	}
	return true;
}