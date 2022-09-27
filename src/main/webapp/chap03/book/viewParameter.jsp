<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
	<b>request.getParameter(String name)</b><br />
	 name parameter =<%=request.getParameter("name")%>
	<br /> address parameter=<%=request.getParameter("address")%> <br />

	<b>request.getParameterValues(String name)</b><br />
	<%
	String[] values = request.getParameterValues("pet");
	if (values != null) {
		for (int i = 0; i < values.length; i++) {
	%><%=values[i]%> <br />
	<%
	}
	}
	%>
	<b> request.getParameterNames()</b><br />
		<%
		Enumeration paramEnum=request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name=(String)paramEnum.nextElement();
		%><%=name %><br /> <%
		}
		%>
	<b>request.getParameterMap()</b> <br />
	<%
	Map parameterMap=request.getParameterMap();
	%>
	<%=parameterMap %><br />
	<%=parameterMap.entrySet() %><br />
	<%-- <%=(String)parameterMap.get("name") %> --%><br /> ClassCastException ??
	<% 
	String[] nameParam=(String[])parameterMap.get("name");
	
	%>
	name=<%=nameParam[0] %>
</body>
</html>