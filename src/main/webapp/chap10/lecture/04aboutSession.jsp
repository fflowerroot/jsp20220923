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
세션 아이디:<%=session.getId() %> 	<br />
<%=session.getCreationTime() %><br />
<%=session.getLastAccessedTime() %><br />
<%=session.isNew() %><br />
<%=session.getMaxInactiveInterval() %><br />
<a href="05invalidate.jsp">세션종료</a>
</body>
</html>