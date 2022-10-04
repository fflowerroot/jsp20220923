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
 	<c:if test= "${!empty para.num1 && !empty para.num2}">
	<p>${param.num1+ param.num2 }</p>
 	</c:if>
 	<c:if test= "${empty para.num1 || empty para.num2}">
	<p>값을 입력해주세요</p>
	<a href="04from.jsp">돌아가기</a>
 	</c:if>
 	
</body>
</html>
	