<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>파라미터</h1>
q파라미터:<%= request.getParameter("q") %>
<%
String q= request.getParameter("q");
if(q==null) out.print("파라미터를 입력하세요");
else out.print(q+"파라미터 검색결과");
%>
</body>
</html>