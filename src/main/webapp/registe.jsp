<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>注册</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/registe_loin_forget_animate.css">
	<link rel="stylesheet" href="css/registe_login_forget.css">


	<script src="js/modernizr-2.6.2.min.js"></script>
	<script >
	
	function refushcode(){
		
		
		document.getElementById("randImage").src="code.jsp?"+Math.random();
	}
	
	</script>
 
	</head>
	<body>

		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="menu">
						<li class="active"><a href="registe.jsp">注册界面</a></li>
						
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="user/userList" method="post" class="fh5co-form animate-box" data-animate-effect="fadeIn">
						<h2>注册界面</h2>
						<div class="form-group">
							<div class="alert alert-success" role="alert">请仔细填写信息</div>
						</div>
						<div class="form-group">
						
							<input type="text" class="form-control" name="name" id="name" placeholder="起一个昵称吧" autocomplete="off">
						</div>
				           <div class="form-group">
							<label for="phone" class="sr-only">手机号</label>
							<input type="text" class="form-control" id="phone" name="phone" placeholder="手机号" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="输入密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="re-password" class="sr-only">二次输入密码</label>
							<input type="password" class="form-control" id="re-password" name="repassword" placeholder="再次输入密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="code" class="sr-only">输入验证码</label>
							<input type="text" class="form-control" id="code" name="code" placeholder="输入验证码" autocomplete="off">
							<img id="randImage"  onclick="refushcode();" title="换一张试试" name="randImage" src="code.jsp">
							
						</div>
						<div class="form-group">
							<p>已经有账号了吗? <a href="index.html">那去登陆吧</a></p>
						</div> 
						<div class="form-group">
							<input type="submit" value="注册" class="btn btn-primary">
						</div>
					</form>
					<!-- END Sign In Form -->

				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; 育婴门户网站</small></p></div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>

