<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.*" %>
    <%@ page import ="jsp20220923.chap07.*" %>
    
<% request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<Book> list =new ArrayList<>();
list.add(new Book("java",300));
list.add(new Book("java2",3000));
list.add(new Book("java3",30000));
request.setAttribute("books", list);
%>
${books[0].title }
${books[0].price }
${books[1].title }
${books[1].price }
${books[2].title }
${books[2].price }

</body>
</html>