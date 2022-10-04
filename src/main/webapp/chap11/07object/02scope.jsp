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
pageScope, requestScope, sessioniScope, applicationScope <br />
각 영역의 attribute를 저장하고 있는 Map
<%
pageContext.setAttribute("pageAttr1","pageVal1");
%>
${pageAttr1 }
${pageScope.pageAttr1 }
&{pageScope["pageAttr1"]

</body>
</html>