<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%!
	//선언부 작성은 맨 위에 하는 것이 좋음
	private void m1(){
		System.out.println("선언부에 작성된 m");
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>선언부로 메소드 작성 가능</h1>
	<%
	m1();
	%>
</body>
</html>