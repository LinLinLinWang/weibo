<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帖子详情</title>
</head>
<body>
	帖子发帖人头像
	<img src="userPhoto/${historyPostingRecord.phone}.jpg"
		style="width: 100px; height: 100px"
		onerror="this.src='userPhoto/default.jpg'"> 发帖人姓名 ：
	${historyPostingRecord.user.uName}
	</br>
	</br> 帖子主题： ${theam}
	</br> 发帖内容：
	<c:set value="${fn:split(historyPostingRecord.content,'内容')}"
		var="str1" />

	<c:forEach items="${str1}" var="s" begin="0" end="2" varStatus="status">
		<c:if test="${status.index==0}">

		</c:if>
		<c:if test="${status.index==1}">
	                   	 ${ s }  
					</c:if>

	</c:forEach>
	</br> 以下人评论过
	<table class="table table-striped table-bordered table-hover"
		id="dataTables-example" style="width: 100%; height: 100%">
		<thead>
			<tr>

				<th>用户头像</th>
				<th>用户名字</th>

				<th>评论内容</th>
                
				<th>评论时间</th>
                





			</tr>
		</thead>
		<tbody>

			<c:forEach items="${historyPostingRecord.reviewList}"
				var="reviewList">

				<tr class="odd gradeX">

					<td><img src="userPhoto/${reviewList.sendPhone}.jpg"
						onerror="this.src='userPhoto/default.jpg'"
						style="width: 100px; height: 100px"></td>
					<td>=============${reviewList.fromuser.uName}</td>
					<td>${reviewList.content}</td>
					<td>${reviewList.time}</td>
				</tr>

			</c:forEach>
		</tbody>
	</table>


</body>
</html>