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
 address :  <%= request.getParameter("address") %> <br />
 address2 :  <%= request.getParameter("address2") %> <br />
 
</body>
</html>