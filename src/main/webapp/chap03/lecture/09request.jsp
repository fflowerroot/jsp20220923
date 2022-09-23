<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request기본객체</h1>
	
<%System.out.println(request); %>
<%=request%>
<hr/>
<%=request.getMethod()%>
<%=request.getRequestURI()%>
<hr/>
<h1>header정보들</h1>
<p><%=request.getHeader("Accept") %></p>
<p><%=request.getHeader("Accept-Encoding") %></p>





</body>
</html>