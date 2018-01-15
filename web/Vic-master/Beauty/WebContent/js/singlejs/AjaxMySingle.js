$.ajax({
    url: 'CommentServlet?method=showAllComment',
    type: 'POST',
    data:{"id":id},//传到Servlet中的参数
    dataType: 'JSON',
    success: function (resultData) {//传回来的数据
        var str = "";
        $.each(resultData.s1, function (i, us) {/* //us相当于 items var="us" */
        	console.log(us);/* //在控制台显示 */
            str = str + "<div class=\"col-md-4 text-center wow fadeInUp\" data-wow-duration=\"500ms\" data-wow-delay="+us.delay+"><div class=\"wrap-about\"><div class=\"icon-box\"><i class='"+us.icon+"'></i></div><div class=\"about-content text-center\"><h3 class='ddd'>"+us.title+"</h3><p>"+us.test+"</p></div></div></div>";
        });
        $.each(resultData.s2, function (i, us) {
            str = str + "<div class=\"col-md-4 text-center wow fadeInUp\" data-wow-duration=\"500ms\" data-wow-delay="+us.delay+"><div class=\"wrap-about\"><div class=\"icon-box\"><i class='"+us.icon+"'></i></div><div class=\"about-content text-center\"><h3 class='ddd'>"+us.title+"</h3><p>"+us.test+"</p></div></div></div>";
        });
        $("#aboutus").html(str);
    },
    error: function (msg) {
        alert(msg);
    }
});


$.ajax({
	"url":"http://localhost:8080/Beauty/CommentServlet?method=showAllComment",
	"type":"get",
	"async":"true",
	"data":{"id":id},//提交参数方式: 一种,采用字符串拼接的方式组装成 键值对参数形式.
	"success":callBack,      //二种,可以是JSon对象的形式(也是一种key:value形式).
	"dataType":"json",//注意，此处犯过错误，Servlet中传递的是json字符串，此处不能使用text
	"error":function()
			{
				alert("服务器响应失败!");
			}
});
 /* check1.text("进入Ajax"); */
//Ajax 回调函数，调用Servlet中的数据 
function callBack(commentJ) {
 		var comment=JSON.parse(commentJ);
 		var li ="";
		$.each(res,function(n,comment){
			alert("进入遍历");
			li=li+"<tr><td><img src='images/peo1.jpg'/>&nbsp;"+n.uid
			+'</td><td>颜色分类：<font>'+'${oneGood.colour}'
			+'</font> <br />型号：<font>'+'${oneGood.typeEffect}'
			+'</font></td><td>'+n.content+'<br /> <font color="#999999">'
			+n.time+'</font></td></tr>';
		});
		$(".jud_list").html(li);
}//end callback