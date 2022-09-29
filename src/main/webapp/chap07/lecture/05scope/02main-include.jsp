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
main
<%
pageContext.setAttribute("page1","page attribute1");
request.setAttribute("req1", "r att1");
%>
<div>
<jsp:include page="02sub-include.jsp"></jsp:include>
</div>
<%
pageContext.getAttribute("page1");
%>

</body>
</html>