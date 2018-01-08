<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title>图片上传测试页面</title>
 <style>
 label{display: inline-block;width:200px;height:40px;border:1px solid #ccc;}
 .ob{background:#ccc;padding:10px;}
 .imgbox img{height:100px;width:100px;margin:10px;}
 </style>
</head>
<body>
 <div class="ob" id="od" draggable="true">
 <input type="file" id="file" multiple="multiple">
 </div>
 <div class="imgbox"></div>
 <script>
 //获取文件url
 function createObjectURL(blob){
  if (window.URL){
  return window.URL.createObjectURL(blob);
  } else if (window.webkitURL){
  return window.webkitURL.createObjectURL(blob);
  } else {
  return null;
  }
 }
 
 var box = document.querySelector(".imgbox"); //显示图片box
 var file = document.querySelector("#file"); //file对象
 var domFragment = document.createDocumentFragment(); //文档流优化多次改动dom
 
 //触发选中文件事件
 file.onchange = function(e){
  box.innerHTML =""; //清空上一次显示图片效果
  e = e || event;
  var file = this.files; //获取选中的文件对象
 
  for(var i = 0, len = file.length; i < len; i++){
  var imgTag = document.createElement("img");
  var fileName = file[i].name; //获取当前文件的文件名
  var url = createObjectURL(file[i]); //获取当前文件对象的URL
 
  //忽略大小写
  var jpg = (fileName.indexOf(".jpg") > -1) || (fileName.toLowerCase().indexOf(".jpg") > -1);
  var png = (fileName.indexOf(".png") > -1) || (fileName.toLowerCase().indexOf(".png") > -1);
  var jpeg = (fileName.indexOf(".jpeg") > -1) || (fileName.toLowerCase().indexOf(".jpeg") > -1);
 
  //判断文件是否是图片类型
  if(jpg || png || jpeg){
   imgTag.src = url;
   domFragment.appendChild(imgTag);
  }else{
   alert("请选择图片类型文件！");
  }
  }
 
  //最佳显示
  box.appendChild(domFragment);
 
 }
 
 </script>
</body>
</html>
