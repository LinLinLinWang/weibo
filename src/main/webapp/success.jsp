<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>













<style type="text/css">
table {
	width: 100%;
	text-align: center;
	margin-top: 1%
}

table tr {
	font-size: 18px;
	font-family: "微软雅黑";
	height: 40px;
}

table tr:nth-child(2n-1) {
	background-color: gray;
}

table tr:nth-child(2n) {
	background-color: #11111111;
}
</style>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>拥有的projectid</th>

				<th>该用户id拥有的projectinfo</th>
				
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="list">

			<tr><td>${list.id}</td><td>${list.projectinfo}</td></tr>
			</c:forEach>
		</tbody>
	</table>






</body>
</html>