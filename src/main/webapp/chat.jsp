<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%;background-color:skyblue">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>聊天界面展现</title>
  <script type="text/javascript">
  window.onbeforeunload=function (){
	  
	  
	  
	    if(event.clientX>document.body.clientWidth && event.clientY < 0 || event.altKey){
	       alert("关闭浏览器");
	    }else{
	        alert("刷新页面");
	 //     History 对象 pushState() 
//	     这个方法有3个参数,第一个参数，是一个Json对象 , 在你储存有关当前URl的任意历史信息.
//	     第二个参数,title 就相当于传递一个文档的标题 ，
//	     第三个参数是用来传递新的URL. 你将看到浏览器的地址栏发生变化而当前页面并没刷新。 
	 
	//   可查看 ：https://www.oschina.NET/translate/manipulating-url-using-JavaScript-without-freshing-the-page
	 
	    var stateObject = {};
	    var title = "Wow Title";
	    var newUrl = "www.baidu.com";
	    history.pushState(stateObject,title,newUrl);
	        alert(location.href);
	        }
	    }
	</script>
</script>
</head>
<body style="height:100% ">


	<c:import url="template_navigator.jsp"></c:import>
  <div id="main" style="width:60%;height: 60%;background-color: white;margin: auto;text-align:center">
    <div id="top" style="width:100%;height: 10%;background-color: black"></div>
    <div id="middle" style="width:65%;height:100%;float:left"> 
    <div id="content" style="width:100%;height: 60%;background-color: #FFF0F5"> 
    </div>
    <div id="send" style="width:100%;height: 40%;-webkit-box-shadow: #666 0px 0px 40px; 
   -moz-box-shadow: #666 0px 0px 40px; 
   box-shadow: #666 0px 0px 40px;background-color: white"> 
   
  <textarea style="height:70%;width:100%"></textarea>
   <div id="sendbottom" style="height:30%;width:100%">
   <div id="bottom_left"  style="height:100%;width:78%;float:left">聊天界面</div>

   <input type="button" style="background:skyblue;height:70%;width:19%;float:left;border:none" value="发送" />
  
   
    </div>
    </div>
    </div>
  <div id="right" style="width:35%;height: 100%;background-color:  	#E8E8E8;border:12px;float:left"> 
    
    </div>
     
  
  
 
  
</body>
</html>