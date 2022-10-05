<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
	<%
	pageContext.setAttribute("heros", Map.of("cap1", "steve1", "cap2", "steve2", "cap3", "steve3"));
	%>
	Map의 아이템, key와 value 쌍(entry)의 타입은 Map.Entry 임. get@@()에서 @@을 소문자로 바꾼 것이
	프로퍼티가 됨 getKey()와 getValue() 메서드가 있으므로 key와 value 프로퍼티를 쓸 수 있음.
	<br />
	<c:forEach items="${heros }" var="hero" varStatus="s">
		${s.count }: ${hero.key } : ${hero.value }<br />
	</c:forEach>
	
<%-- 	<c:forEach items="${heros }"  varStatus="s"> --%>
<%-- 		${s.count }: ${${heros }.key } : ${${heros }.value }<br /> --%>
<%-- 	</c:forEach> --%>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</body>
</html>



















