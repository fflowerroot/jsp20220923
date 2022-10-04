<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
attribute 에 List<Car> 타입 객체 추가

--%>
<%
Car car = new Car();
Car car2 = new Car();
car.setPrice(1000000);
car2.setPrice(100000000);
car.setModel("a");
car2.setModel("b");


List<Car> l = new ArrayList<>();

l.add(car);
l.add(car2);
/* l[0].setPrice("10000"); */

request.setAttribute("cars", l);
%>

	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p>
	<p>${cars[1].company }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].model }</p>
</body>
</html>


