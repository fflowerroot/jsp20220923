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
<h3>scope속성으로 영역 지정</h3>
<c:set var="attr1" value="spring" scope="page"/>
<c:set var="attr1" value="spring2" scope="request"/>
<c:set var="attr1" value="spring3" scope="session"/>
<c:set var="attr1" value="spring4" scope="application"></c:set>

<p>${pageScope.attr1 }</p> 
<p>${requestScope.attr1 }</p>
<p>${sessionScope.attr1 }</p>
<p>${applicationScope.attr1 }</p>

attr1을 el변수라고 하기도 함





</body>
</html>