<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
어떻게 검색창에 입력한 값이 request객체의 파라미터로 넘어오나?<br />
>> html element의 form element 

text input field?
submit button?

<form action=""> action값 입력 안하면 현제 페이지.
<input type="text" name="name1" />
<input type="submit" /> <br />
<%= request.getParameter("name1") %>
</form>

<form action=""> 
<input type="text" name="name2" /> name속성(?)입력 안하면 쿼리스트링으로 안넘어감.
<input type="submit" /> <br />
<%= request.getParameter("name2") %>
<%-- <%= Integer.parseInt(request.getParameter("name2"))*Integer.parseInt(request.getParameter("name2")) %> --%>
<%-- <%= Integer.parseInt(request.getParameter("name2")) %> --%>
<%-- <%= Integer.parseInt("a") %> --%>

</form>

<form action="">
<input type="text" name="n"/>
<input type="submit" />
</form>
<%String s= request.getParameter("n");
Integer n= Integer.valueOf(s);%>
<%=n %>
<%-- <%= Integer.valueOf(request.getParameter("n"))*Integer.valueOf(request.getParameter("n")) %> --%>
<%-- <% int i= Integer.valueOf(request.getParameter("n"))*Integer.valueOf(request.getParameter("n"));%> --%>
<%-- <%=i %> --%>
<%-- <% int i= Integer.valueOf(request.getParameter("n"));%> --%>
<%-- <%String s=request.getParameter("n"); --%>
<%-- Integer ii = Integer.parseInt(s);%> --%>
<%-- <%=ii %> --%>


<hr />


HttpServletRequest 는 ServletRequest 를 상속받았으므로 
ServletRequest가 가진 함수도 봐야함(함수 그대로 상속받았으니까).
<br />
???? el api는 어떤걸 봐야함?










<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</body>
</html>























