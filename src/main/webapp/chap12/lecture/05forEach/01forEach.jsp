<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>jstl core forEach : 반복해서 실행/출력해야 하는 코드가 있을 때 사용</h3>
	
	<c:forEach begin="1" end="3">
		<h3>...</h3>
	</c:forEach>
	<hr />
	<c:forEach begin="1" end="3" var="idx">
	<p>${idx }</p>
	</c:forEach>
	
	
	<hr />
	
	<%
	out.write("1. d");
	%> <br />
	2. d <br />
	<%= "3. d" %><br />
	1,2,3이 같은 일 하는거 아니야? 왜 종류가 3가지나 되지?
	
</body>
</html>