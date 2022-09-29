<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>    
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,String>map = (Map<String,String>) session.getAttribute("name");%>
<h1><%= map.get("1") %></h1>
<h1><%= map.get("2") %></h1>
</body>
</html>