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
<%
String nameParam= request.getParameter("name");
if(nameParam!=null && !nameParam.trim().isEmpty()){
	session.setAttribute("userName", nameParam);
}
String name=(String)session.getAttribute("userName");
if(name==null) {name="guest";}
%>
<%= name%>님 반갑습니다.
<form action="">
name: <input type="text" name="name"/>
<input type="submit" />
</form>
</body>
</html>