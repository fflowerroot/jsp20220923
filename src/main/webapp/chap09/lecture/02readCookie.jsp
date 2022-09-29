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
	Cookie 일기
	<%Cookie cookie = request.getCookies();
	String value="";
	String sessionId="";
	for(Cookie cookie: cookies){
	if(cookie.getName().equals("my-cookie1")){
	value= cookie.getValue();
	}if(cookie.getName().equals("JSESSIONID")){
	sessionId=cookie.getValue();
	}%>
</body>
</html>