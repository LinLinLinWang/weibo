<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帖子详情</title>
</head>
<body>
          帖子发帖人头像 <img src="userPhoto/${historyPostingRecord.phone}.jpg" style="width: 100px;height: 100px" onerror="this.src='userPhoto/default.jpg'">
   发帖人姓名 ：                  ${historyPostingRecord.user.uName}
   发帖内容：      ${historyPostingRecord.content}
 
 
 以下人评论过<table class="table table-striped table-bordered table-hover"
								id="dataTables-example" style="width:100%; height:100%">
								<thead>
									<tr>
									   
										<th>用户头像</th>
										<th>用户名字</th>
										
										<th>评论内容</th>
									
										
									
									
									

									</tr>
								</thead>
								<tbody>
								
	                              <c:forEach items="${historyPostingRecord.reviewList}" var="reviewList">

										<tr class="odd gradeX">   
										
                                          <td><img src="userPhoto/${reviewList.sendPhone}.jpg" onerror="this.src='userPhoto/default.jpg'" style="width: 100px;height: 100px"></td>    
									      <td>=============${reviewList.fromuser.uname}</td>    
									       <td>${reviewList.content}</td>    
									</tr> 
					
									</c:forEach>
								</tbody>
							</table>
 
                      
</body>
</html>