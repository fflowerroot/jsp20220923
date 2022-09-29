<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
// session attribute 추가하기
/* List<String> list = List.of("iron", "cap", "thor", "hulk");

session.setAttribute("names", list); */





session.setAttribute("name", Map.of("1", "cap", "2", "hulk"));

response.sendRedirect("11to.jsp");
%>