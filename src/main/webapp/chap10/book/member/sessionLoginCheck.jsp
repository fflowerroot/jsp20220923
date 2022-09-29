<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="sessionLogin.jsp" method="post">
id<input type="text" name="id" size="10"/>
password <input type="password" name="password" size="10"/>
<input type="submit" value="login" /> </form>
</body>
</html>