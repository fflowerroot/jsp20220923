<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>jstl core set: 자바빈의 프로퍼티 변경 시 사용</h3>
	<%
	pageContext.setAttribute("book1", new Book("java",500));
	%>
	
</body>
</html>