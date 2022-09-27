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
<form action="viewParameter.jsp">
이름:<input type="text"  name="name"/> <br />
address:<input type="text"  name="address"/><br />
favorate pet:
<input type="checkbox" name="pet" value="dog"id="" />dog
<input type="checkbox" name="pet" value="pig"id="" />pig
<input type="checkbox" name="pet" value="cat"id="" />cat
<br />
<input type="submit" value="submit" />

</form>
</body>
</html>