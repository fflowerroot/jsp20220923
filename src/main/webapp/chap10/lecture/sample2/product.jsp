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
	<h1>product</h1>
	<form action="cart.jsp" method="post">
	product name : <input type="text" name="product" value="notebook" />
	<input type="submit" value="add cart"/></form>
</body>
</html>