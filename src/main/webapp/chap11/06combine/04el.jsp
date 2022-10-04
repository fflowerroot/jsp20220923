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
<%
Map<String, Person> map = new HashMap();
request.setAttribute("p", map);

Person p1 = new Person();
p1.setAge(11);
p1.setName("ay");
p1.setAlive(true);

Person p2 = new Person();
p2.setAge(112);
p2.setName("ay2");
p2.setAlive(true);


map.put("per1", p1);
map.put("per2", p2);

%>
<p>${p.per1.name }</p>
<p>${p.per1.age }</p>
<p>${p.per1.alive }</p>
<p>${p.per2.name }</p>
<p>${p.per2.age }</p>
<p>${p.per2.alive }</p>








<%-- <p>${cars.car1.model }</p>
<p>${cars.car1.price }</p>
<p>${cars.car1.company }</p>
<p>${cars.car2.model }</p>
<p>${cars.car2.price }</p>
<p>${cars.car2.company }</p> --%>

<hr>

</body>
</html>












</body>
</html>