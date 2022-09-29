<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
// request, session, application에 attribute 추가하는 코드 작성
	pageContext.setAttribute("page1", "page attr1");
	request.setAttribute("attr1", "req attr1");
	session.setAttribute("attr1", "sess attr1");
	application.setAttribute("attr1", "app attr1");
%>

<jsp:forward page="03to.jsp" />