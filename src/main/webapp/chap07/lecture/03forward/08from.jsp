<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>    
<%@ page import java.util.* %>
<%
List<String> list=List.of("iron","cap","thor");
request.setAttribute("heros", list);


%>
<jsp:forward page="08to.jsp"></jsp:forward>