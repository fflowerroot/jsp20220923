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
<table width="100%" border="1">
<tr>
	<td>제품번호</td><td>XXXX</td>
</tr>
<tr>
	<td>가격</td><td>10000won</td>
</tr>
</table>
<jsp:include page="infosub.jsp">
	<jsp:param value="B" name="type"/>
</jsp:include>
</body>
</html>