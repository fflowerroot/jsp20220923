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
	<h3>값을 거꾸로 넣을 수없음 : begin이 end보다 클 수 없음</h3>
	<c:forEach begin="9" end="11">1</c:forEach> <br />
	<c:forEach begin="9" end="9">1</c:forEach><br />
	<c:forEach begin="9" end="10">1</c:forEach><br />
	<c:forEach begin="9" end="1">1</c:forEach><br />
<%-- 	<c:forEach begin="-1" end="11">1</c:forEach> --%>

<h3>1씩 증가하지 않을 수 있음</h3>
<c:forEach begin="9" end="11" step="2" var="i">${i },</c:forEach>
</body>
</html>