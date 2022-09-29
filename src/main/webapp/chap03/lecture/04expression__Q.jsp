<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>expression 표현식</h1>
	
	<%! 
    	void m(String s){
		for(int i =0; i<2;i++){
		System.out.println("작성된 명령문");
		}	
	} 
	%>
	<%
	
	// 스크립트릿 : 메소드 내의 명령문
	/* System.out.println("작성된 명령문");
	 */
	%>
	
	<%-- expression : print 메소드의 파라미터 > 항상 그런거지? 다른 메서드의 파라미터가 될 수는? 
	>> 없는거겠지. 그러니까 void함수 호출은 쓸 수 없는거지.--%>
	<%= "안녕" %>
	<%= "jsp" %>
	<%= m("d") %>  // 안됨
</body>
</html>





