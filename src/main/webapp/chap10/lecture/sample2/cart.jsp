<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<% request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String product= request.getParameter("product");
Map<String,Integer> cart=(Map<String,Integer>)session.getAttribute("cart");
if(cart==null){
session.setAttribute("cart", new HashMap<String,Integer>());
}
cart.computeIfPresent(product,(k,v)->v+1);
cart.computeIfAbsent(product,(k)->1);%>
</body>
</html>