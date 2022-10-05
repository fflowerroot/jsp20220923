<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	pageContext.setAttribute("arr1", List.of(1, 2, 3, 4));
	%>
	${fn:length(arr1) }
	<br /> ${arr1.size() }
	<br />

	<%
	pageContext.setAttribute("arr2", "javascript");
	%>
	${fn:length(arr2) }<br />
	 ${arr2.length() }<br />

	<%
	pageContext.setAttribute("arr3", "javascript,js,js2");
	%>

	${fn:split(arr3,",")[1] }
	<br />
	<c:set var="langs" value="${fn:split(arr3,',') }"></c:set>
		<c:forEach items="${langs }" var="lang">
			<p>${lang }</p>
		</c:forEach>
	

	<hr />
	<%
	pageContext.setAttribute("arr3", "css,html,java,sql");
	%>
	${fn:split(arr3, ",")[1] }
	<br>
	<c:set var="langs" value="${fn:split(arr3, ',') }" />

	<c:forEach items="${langs }" var="lang">
		<p>${lang }</p>
	</c:forEach>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>

</html>












