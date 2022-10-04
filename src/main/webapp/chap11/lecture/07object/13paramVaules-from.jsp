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
	<form action="13paramValues-to.jsp">
	date: <input type="date" name="date"/>
	<br />
	<select name="prod" id="" multiple="">
		<option value="cake1">cake1</option>
		<option value="cake2">cake2</option>
		<option value="cake3">cake3</option>
		<option value="cake4">cake4</option>
		<option value="cake5">cake5</option>
	</select>
		<input type="submit" value="전송">
	</form>
</body>
</html>