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
	<form action="10param-to.jsp" method="post">
	<input type="text" name="email" value="email" /> <br />
	<input type="number" name="phone-number" value=010/> <br />
	<input type="text" name="product" value="product" /> <br />
	
	<input type="submit" />
	</form>
</body>
</html>