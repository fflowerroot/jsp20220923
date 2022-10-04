<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("hero list", List.of("iron", "cap"));
	%>
	<p>${requestScope["hero list"][0] }</p> 
	<p>${requestScope["hero list"][1] }</p>
	<p>${pageScope["hero list"][0] }</p>
	<p>${pageScope["hero list"][1] }</p>
</body>
</html>