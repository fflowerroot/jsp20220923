<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
// request attribute
session.setAttribute("num1", 1);

// session attribute
// session type : HttpSession
session.setAttribute("num2", 2);

response.sendRedirect("09to.jsp");
%>