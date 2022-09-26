<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
name:<form action="">
<br />
location:
<input type="text" n="n"/>
<input type="radio"  n="l" v="home"/>home
<input type="radio"  n="l" v="work"/>work
<input type="radio"  n="l" v="other"/>other

</form>
<hr />
<input type="radio"  n="m" v="credit"/>credit
<input type="radio"  n="m" v="cash"/>cash
<hr />
<input type="submit" />
<%
String n = request.getParameter("n");
String l = request.getParameter("l");
String m = request.getParameter("m");
out.print(n+"님이 선택하신 장소와 결제 수단은 " + l+ m+"입니다");
%>

</body>
</html>