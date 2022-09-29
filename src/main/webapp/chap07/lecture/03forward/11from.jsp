<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>    
<%@ page import="java.util.*" %>
<%@ page import="jsp20220923.chap07.*" %>
<%
	Person p = new Person();
	p.setName("biden");
	p.setAge(70);
	p.setAlive(true);
	
	Person p2 = new Person();
	p.setName("biden2");
	p.setAge(70);
	p.setAlive(true);
	
	Person p3 = new Person();
	p.setName("biden3");
	p.setAge(70);
	p.setAlive(true);
	
	List<Person> listP = List.of(p,p2,p3);
	request.setAttribute("list", listP);
%>

<jsp:forward page="11to.jsp" />