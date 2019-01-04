<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%;background-color:#EAEAEA">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>发布帖子</title>
<style>
	ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #6CA6CD;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
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
.left{
	width:100px;
	}
</style>
</head>
<body style="height: 100%;">
<div id="main1" style="width:80%;height:100%;background-color: white;margin: auto;text-align:center">
	<div id="nav" style="float:left;">
	
	<h2>妈妈帮</h2>

		<ul>
			<li><a class="active" href="#home">首页</a></li>
			<li><a href="">1</a></li>
			<li><a href="">联系</a></li>
			<li><a href="">关于</a></li>
			<li><a href="">新闻</a></li>
			<li><a href="">联系</a></li>
			<li><a href="">关于</a></li>
			<li><a href="">新闻</a></li>
			<li><a href="">联系</a></li>
			<li><a href="">关于</a></li>
			<li><a href="">新闻</a></li>
			<li><a href="">联系</a></li>
			<li><a href="">关于</a></li>
		</ul>
	</div>
	<div class="text" style="margin-top:10px;width:200px;text-align:left; float:left;">
		<b>发帖</b>
		<table>
			<tr>
			<td class="left">标题：</td>
				<td><input style="height:14px;width:730px;" /></td>
			</tr>
			<tr>
			<td class="left">内容：</td>
			<td><textarea  id="textAreaContainer" style="height: 400px;
			    width: 728px;"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<span class="fl mt5" style="padding-left:35px;color:#8A8A8A;">请遵守<a class="hrefgonyue" target="_blank" href="">论坛公约</a>言论规则，不得违反国家法律法规</span>
					
					<button style="float:right;margin-right:100px;">发表</button>
				</td>
			</tr>
		</table>

		
	</div>
	
</div>	
	
	
	
		
</body>
</html>