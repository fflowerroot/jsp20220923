<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<% request.setCharacterEncoding("utf-8");%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("attr1", "");
	pageContext.setAttribute("attr2", new String[]{});
	pageContext.setAttribute("attr4", Set.of());
	pageContext.setAttribute("attr5",List.of());
	pageContext.setAttribute("attr6",Map.of());
	
	
	
	%>
	<p>${empty attr1 }</p>
	<p>${empty attr2 }</p>
	<p>${empty attr3 }</p>
	<p>${empty attr4 }</p>
	<p>${empty attr5 }</p>
	<p>${empty attr6 }</p>
	<hr />
	<p>${not empty attr3 }</p>
	<p>${!empty attr3 }</p>
	
	
	
</body>
</html>