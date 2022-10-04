<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>choose, when, otherwise : 자바의 if, else if, else와 유사</h3>
	<c:choose>
		<c:when test="false">출력됨?11</c:when>
		<c:when test="false">22</c:when>
		<c:when test="false">33</c:when>
		<c:otherwise>all false..</c:otherwise>
	</c:choose>
</body>
</html>