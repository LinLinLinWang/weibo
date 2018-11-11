<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form id="addUser" action="user/userList" method="post">     
        要查询的人员id(会返回对应projct信息): <input id="name" name="name" /><br/>     
      
        <input type="submit" value="搜索"/>     
     </form> 
</body>
</html>