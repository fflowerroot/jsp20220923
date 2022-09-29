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
01 <br />
	<%
	double num = Math.random();
	session.setAttribute("random number", num);
	System.out.println("세션에 들어간 값: "+ num);
	%>
	<%=num %>
</body>
</html>