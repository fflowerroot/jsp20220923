<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>    
<%@ page import="jsp20220923.chap07.*"%>
<%
Person p = new Person("a",3);
p.setName("bb");
%>
<jsp:forward page="10to.jsp"></jsp:forward>