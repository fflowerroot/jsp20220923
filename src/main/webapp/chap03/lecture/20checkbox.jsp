<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>heros</h1>
	<form action="">
		<input type="text" name="name" value="ay"> <br>
		<input type="checkbox" name="hero" value="spiderman"> spiderman
		<input type="checkbox" name="hero" value="ironman"> ironman
		<input type="checkbox" name="hero" value="wonderwoman"> wonderwoman
		<input type="checkbox" name="hero" value="hulk"> hulk
		<input type="checkbox" name="hero" value="batman"> batman
		
		<br>
		
		<input type="submit" value="전송">
	</form>
	<hr>
<%
String name= request.getParameter("name");
String[] heros=request.getParameterValues("hero");
if(heros!=null){
	
	out.print("<p>");
	out.print(name+"님이 좋아하는 영웅은 ");
	 for(String hero:heros){
		 out.print(hero+" ");
	 }
	 out.print(" 입니다.");
out.print("</p>"); /*이거 왜 써주는거야? > 안써줘도 된대.  */
}
%>
</body>
</html>