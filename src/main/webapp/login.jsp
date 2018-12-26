<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<script type="text/javascript" src="resources/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
		$(function () {
			var number_c=false;
			var password_c=false;
			$("#number").blur(function(){
				if($("#number").val() == ""){
		             $("#number_alert").html("手机号不能是空的");
		             number_c = false;
		         }
				 else if($("#number").val().length == 11){
					 number_c = true ;
					
				 }
				 else{
					$("#number_alert").html("必须11位");
		             number_c = false ;
		             
		         }
			});
			
			$("#password").blur(function(){
				if($("#password").val() == ""){
		             $("#password_alert").html("密码不能是空的");
		             password_c = false;
		         }
				 else if($("#password").val().length < 6){
					 $("#password_alert").html("密码不低于6位");
		             password_c = false;
				 }
				 else{
					$("#password_alert").html("");
		             password_c = true;
		         }
			});
			$("#sbumit_button").click( function(){	
				   if(number_c==true&&password_c==true){
					   var number=$("#number").val();
					   var password=$("#password").val();
					   $.ajax({
			            	 data:{"number":number,"password":password},
			            	 contentType:"application/json;charset=UTF-8",
			                 url:"check_login.smvc",
			                 error:function(xmlHttpRequest,status){
			 					alert("发生错误");
			                 },
			                 success:function(data){
			                     if(data==false){
			                    	 $("#number_alert").html("账号或密码错误");
			                     	}else{
			                     		$("#form_login").submit();
			                   		}
			                   }
			             });	 
			        }
	             });	 
	});
</head>
<body>
	<div class="body_div" style=" height:550px;background-image: url('resources/img/bg.jpg'); ">
	<form id="form_login" class="form-horizontal"  action="user_login.smvc" method="post" style="float: right;margin-top:50px; margin-right: 180px;width: 346px; height: 450px;">
					<span class="heading">用户登录</span>
					<div class="form-group">
						<input type="text" class="form-control" id="number" name="number" placeholder="用户名"><span id="number_alert"></span>
						<i class="fa fa-user"></i>
					</div>
					<div class="form-group help">
						<input type="password" class="form-control" id="password" name="password" placeholder="密码"><span id="password_alert"></span>
						<i class="fa fa-lock"></i>
						<a href="#" class="fa fa-question-circle"></a>
					</div>
					<div class="form-group" style="width: 310px;">
						
						<!-- <input class="btn btn-default" style="width: 200px;"  value="立刻登录" type="submit"/> --> <button id="sbumit_button" type="button" class="btn btn-default" style="width: 200px;">立刻登录</button> 
						<br><br><br>
						<a href="register_xs.jsp" style="margin-left: 31px;">注    册</a>
							
						</span>
					</div>
				</form>
		
	</div>

</body>
</html>