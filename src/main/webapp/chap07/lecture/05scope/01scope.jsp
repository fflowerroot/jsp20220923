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
pageContext.setAttribute("page1", "page attr1");
request.setAttribute("r1", "r attr1");
session.setAttribute("s1", "s attr1");
application.setAttribute("a1", "a attr1");
%>
</body>
</html>