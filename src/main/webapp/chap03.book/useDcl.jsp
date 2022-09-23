<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    int multiply(int a,int b){
    	System.out.println("1"); // 실행 안됨?
    	return a*b;
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head></head><title>Insert title here</title></head>
</head>
<body>
	10*25=<%=multiply(10,25) %><br>
	101*25=<%=multiply(101,25) %>
</body>
</html>