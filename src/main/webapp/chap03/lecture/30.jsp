<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>자기소개서</h1>
<form action="">
<input type="text" name="name"/>

<textarea name="desc" id="" cols="30" rows="10"></textarea>
</form>
<hr />
<%
String name=request.getParameter("name");
String desc=request.getParameter("desc");
%>
<%=name %> 님의 자기소개
<p style="white-space: pre-wrap;"><%=desc %></p>


</body>
</html>