<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>    
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("people", "사람들");
request.setAttribute("people", Map.of("bts","jm","bp","jn"));
%>
<p>${requestScope.people.bts }</p>
<p>${requestScope.people.bp }</p>



</body>
</html>