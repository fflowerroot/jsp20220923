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
String name=(String)session.getAttribute("name");
if(name==null){
	name="guest";
}
%>
<%=name %>님이 other1 페이지 사용중
<a href="main.jsp">main.jsp"</a>
</body>
</html>