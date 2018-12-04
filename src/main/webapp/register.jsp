<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<!-- 引用jquery库 -->
	<script type="text/javascript" src="resources/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
		$(function () {
			var name_c=false;
			var number_c=false;
			var verify_number_c=false;
			var password_c=false;
			var confirm_password_c=false;
			
			/* 检验用户名 */
			$("#name").blur(function () {
				
				 if($("#name").val() == ""){
		             $("#name_alert").html("用户名不能是空的");
		             name_c = false;
		         }else{
					$("#name_alert").html("");
					 name_c =true;  
				 }
			});
			
			/* 检验手机号 */
			$("#number").blur(function(){
				if($("#number").val() == ""){
		             $("#number_alert").html("手机号不能是空的");
		             number_c = false;
		         }
				 else if($("#number").val().length == 11){
					 
					 var number=$("#number").val();
		             $.ajax({
		            	 data:{"number":number},
		            	 contentType:"application/json;charset=UTF-8",
		                 url:"check_number_unicity.smvc",
		                 error:function(xmlHttpRequest,status){
		 					alert("发生错误");
		                 },
		                 success:function(data){
		                     if(data==false){
		                    	 	$("#number_alert").html("不可用，此手机号已被注册");
		                    	 	number_c = false;
		                     	}else{
		                     		$("#number_alert").html("可用");
		       		             	number_c = true;
		                   		}
		                   }
		             });	 
				 }
				 else{
					$("#number_alert").html("必须11位");
		             number_c = false ;
		             
		         }
			});
			
			
			

			
			//验证密码
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
			
			// 验证确认密码
			$("#password_confirm").blur(function(){
				if($("#password_confirm").val() == ""){
		             $("#password_confirm_alert").html("请再次输入密码");
		             confirm_password_c = false;
		         }
				else if($("#password_confirm").val() != $("#password").val()){
		             $("#password_confirm_alert").html("两次密码不一致");
		             confirm_password_c = false;
		         }
				 else{
					$("#password_confirm_alert").html("");
		             confirm_password_c = true;
		         }
			});
			


	});
	</script>
<title></title>
</head>

<body>
	<div id="header">
		<div class="bg"></div>
		<div id=""><span class="welcom">欢迎注册</span></div><div class="welcom1"><a href="login.jsp">已有账号？登录</a></div>
	</div>

	<div id="content">
		<form id="register_form" action="user_register.smvc" method="POST">
		<div class="line">
			<span class="text"><b>*</b>用户名：</span> <span class="ipt"> <input
				id="name" name="name" type="text" maxlength="10" class="kuang1 user"> </input>
			</span> <span id="name_alert" class="dsp"></span>
		</div>

		<div class="line">
			<span class="text"><b>*</b>手机号：</span> <span class="ipt"> <input
				 id="number" name="number" type="phone" class="kuang1 pwd"> </input>
			</span> <span id="number_alert" class="dsp"></span>
		</div>

		<div class="line">
			<span class="text"><b>*</b>用户密码：</span> <span class="ipt"> <input
				class="kuang1 pwd" id="password" name="password" type="password"> </input>
			</span> <span id="password_alert" class="dsp"></span>
		</div>

		<div class="line">
			<span class="text"><b>*</b>确认密码：</span> <span class="ipt"> <input
				 id="password_confirm" name="password_confirm" class="kuang1 pwd" type="password"> </input>
			</span> <span id="password_confirm_alert" class="dsp"></span>
		</div>

		
		
		<div class="xieye">
			<span class="text"> <input type="checkbox" /> 我已经同意<span
				class="texieyi">用户注册协议</span>
			</span>
		</div>

		<div class="divzhuce">
			<input id="submit" class="zhuce" type="submit" value="立即注册" />
		</div>
		</form>
	</div>
</body>

</html>