<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>    
<%
String memberId=(String)session.getAttribute("MEMBERID");
boolean login = memberId==null? false:true;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(login){
%>
id "<%= memberId %>"로 로그인 한 상태
<%
}else{
%>
로그인하지 않은 상태
<%
}%>
</body>
</html>