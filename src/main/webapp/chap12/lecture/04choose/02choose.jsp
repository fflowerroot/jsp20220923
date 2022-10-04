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
	<h3>나이별 추천 영화</h3>
	<c:choose>
		<c:when test="${param.genre.equal("comedy") }">타짜</c:when>
		<c:when test="${param.genre.equal("comedy")}">토르</c:when>
		<c:when test="${param.genre.equal("comedy")}">뽀로로</c:when>
		<c:otherwise>장르를 선택해주세요</c:otherwise>
	</c:choose>
</body>
</html>