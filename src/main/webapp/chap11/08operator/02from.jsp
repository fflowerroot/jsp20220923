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
<%
request.setAttribute("num1", 99);
request.setAttribute("num2", 77);
request.setAttribute("num3", 77);
request.setAttribute("num4", 77);
request.setAttribute("n5", 77);
request.setAttribute("n6", 77);
request.setAttribute("n7", 77);
request.setAttribute("n8", 77);
request.setAttribute("num9", 77);
// request.setAttribute("num10", 0);
request.setAttribute("num10", 1);
%>
<jsp:forward page="02to.jsp"></jsp:forward>
</body>
</html>