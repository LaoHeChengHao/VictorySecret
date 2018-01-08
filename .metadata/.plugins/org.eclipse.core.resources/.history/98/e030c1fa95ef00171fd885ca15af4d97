
/**
 * 使用ajax实现用户注册功能
 */
$(document).ready(function() {
					// 用户注册绑定失去焦点事件
					$("#loginName").blur(checkloginName);// 用户名
					$("#password").blur(checkpassword);// 密码
					$("#passwords").blur(checkpasswords);// 重复密码
					$("#email").blur(checkemail);
					$("#one").click(function() {
						var loginName = $("#loginName").val();
						var password = $("#password").val();
						var email = $("#email").val();
						// 提交表单, 调用验证函数
						var flag = true;
						if (!checkloginName())
							flag = false;
						if (!checkpassword())
							flag = false;
						if (!checkpasswords())
							flag = false;
						if (!checkemail())
							flag = false;
						
						
						if (flag == false) {
							alert("填写信息错误,重新填写!");
							} else {
								$.ajax({
									"url" : "http://localhost:8080/tiantmusic/UserList.do",
									"type" : "post",
									"data" : "name="+ loginName+ "&password="+ password+ "&email="+ email+ "&c=registerUser",
									"dataType" : "text",
									"success" : callBacks,
									"error" : function() {
										alert("系统繁忙!");
										}
								});
								function callBacks(user) {
									if (user == null) {
										window.location = "http://localhost:8080/tiantmusic/register.jsp";
										} else {
											window.location = "http://localhost:8080/tiantmusic/CollList.do?c=collList";
										}
									}
								};
							});
		});
// 验证注册用户名
function checkloginName() {
	var name = $("#loginName");
	var pattern = /^\S{2,12}$/;
	if (name == "") {
		$("#check").text("输入的用户名不能为空!");
		return false;
	} else if (!pattern.test($("#loginName").val())) {
		$("#check").text("用户名2-12位(用户名只能包含字母,数字 ,_,-)");
		return false;
	} else {
		$("#check").text("");
		if (inputOnBlur()!=true) {
			return false;
		}
	}
	return true;
}
// 验证注册密码
function checkpassword() {
	var password = $("#password");
	var pattern = /^\w{6,10}$/;
	if (password == "") {
		$("#check2").text("密码不能为空!");
		return false;
	} else if (!pattern.test($("#password").val())) {
		$("#check2").text("密码必须6-10位!");
		return false;
	} else {
		$("#check2").text("");

	}
	return true;
}
// 验证注册重复密码
function checkpasswords() {
	var passwords = $("#passwords");
	var psd1 = document.getElementById("password").value;
	var psd2 = document.getElementById("passwords").value;
	if (passwords == "") {
		$("#check3").text("重复密码不能为空!");
		return false;
	} else if (psd1 != psd2) {
		$("#check3").text("两次密码不一致");
		return false;
	} else {
		$("#check3").text("");

	}
	return true;
}
// 验证注册邮箱
function checkemail() {
	var email = $("#email");
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	if (email == "") {
		$("#check4").text("邮箱不能为空!");
		return false;
	} else if (!pattern.test($("#email").val())) {
		$("#check4").text("邮箱格式不正确，格式:xxxxx@xx.xxx");
		return false;
	} else {
		$("#check4").text("");

	}
	return true;
}
//鼠标失去焦点触发事件，去和数据对比是否存在用户名
var  tag = false;
 function inputOnBlur(){
	 var loginName = $("#loginName").val();

	 $.ajax({
		 "url" : "http://localhost:8080/tiantmusic/UserList.do",
		 "type" : "post",
		 "data" : "name=" + loginName + "&c=getUserName",
		 "dataType" : "json",
		 "success" : callBackinputOnBlur,
		 "error" : function() {
			 alert("系统繁忙!");
			 }
	 });
	 //回调函数
	 if (tag==false) {
		 return false;
		 }
	 return true;
	 }
 
 
 
 function callBackinputOnBlur(user) {
	 if (user == true) {
		 $("#check").text("用户名已存在");
		 tag = false;
		 }else{
			 $("#check").text("用户名可以使用!");
			 tag = true;
			 }
	 }


