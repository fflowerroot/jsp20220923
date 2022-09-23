<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public int add(int a, int b) {
		int c = a + b;
		return c;
	}

	public int subtract(int a, int b) {
		int c = a - b;
		return c;
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<% 
// 여기가 어떤 메서드 내부임
	int v=3;
	int v2=9;
	int addResult = add(v,v2);
	int subtractResult=subtract(v,v2);
/* 	public int add(int a, int b) {
		int c = a + b;
		return c;
	} 여기에 필드 작성은 되고 메서드 작성은 안돼? > 여기가 메서드 내부라서*/
 %>
 
<!--안에는 변수명? -->
<%= v %>+<%= v2 %>=<%= addResult %>
<br>
<%= v %>-<%= v2 %>=<%= subtractResult %>

</body>
</html>