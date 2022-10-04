<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Person p1 = new Person();
	p1.setName("ay");
	p1.setAge(50);
	p1.setAlive(true);
	Person p2 = new Person();
	p2.setName("ay2");
	p2.setAge(20);
	p2.setAlive(false);
	
	request.setAttribute("person1", p1);
	request.setAttribute("person2", p2);
	%>

	<p>${person1.name }</p>
	<p>${person1.age }</p>
	<p>${person1.alive }</p>
	<p>${person2.name }</p>
	<p>${person2.age }</p>
	<p>${person2.alive }</p>
</body>
</html>

















