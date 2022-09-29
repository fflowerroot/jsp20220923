<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>    
<%@ page import="java.net.URLEncoder" %>
<%
Cookie cookie =new Cookie("name",URLEncoder.encode("최범균","utf-8"));
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= cookie.getName() %> cookie value="<%=cookie.getValue() %>

</body>
</html>