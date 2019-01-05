<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%;background-color:#EAEAEA">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>发布帖子</title>
<style>

.bbsTitle {
	height: 14px;
    line-height: 14px;
    padding: 5px 0;
    vertical-align: bottom;
    width: 80%;
    border: 1px solid #d5dadf;
    float: left;
}
table,th,td
{
	border:0px solid black;
	
}
#publish{
width:900px;
}
#publish td{
	
		padding:3px 3px 3px 3px;
		
}
.left{
	width:60px;
	}

</style>
</head>
<body style="height: 100%;">
<c:import url="template_navigator.jsp"></c:import>
<div id="main1" style="width:80%;height:100%;background-color: #EAEAEA;margin: auto;text-align:center">
	<!-- <div id="nav" style="float:left;">
	
	<h2>妈妈帮</h2>
		<ul>
			<li><a class="active" href="#home">首页</a></li>
			<li><a href="">1</a></li>
			<li><a href="">联系</a></li>
			<li><a href="">关于</a></li>

		</ul>
	</div> -->
	<form method="post" action="ajax/insertPostingHistory.mvc">
		<div class="text" style="margin-left:100px;margin-top:10px;width:300px;text-align:left; float:left;">
			<b>发帖</b>
			
			<table id="publish">
				<tr>
				<td class="left">标题：</td>
					<td>
						<input name = "title" style="height:14px;width:640px;" />
						<select name="type">
							<option value="-1">选择版块</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="left">内容：</td>
					<td><textarea  name="content" style="height: 400px; width: 728px;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<span class="fl mt5" style="padding-left:35px;color:#8A8A8A;">请遵守<a class="hrefgonyue" target="_blank" href="">论坛公约</a>言论规则，不得违反国家法律法规</span>
						<input type="submit" style="float:right;margin-right:100px;" value="发表"/>
					</td>
				</tr>
			</table>
		</div>
	</form>	
</div>	
	
	
	
		
</body>
</html>