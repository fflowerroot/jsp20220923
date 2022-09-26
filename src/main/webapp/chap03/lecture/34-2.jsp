<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		이름:<input type="text" name="name" /><br /> email:<input type="email"
			name="email" /><br /> address:<input type="text" name="address" /><br />
		password:<input type="password" name="password" /><br /> 
			<input type="submit" value="완료"/>		
		<!-- <input
			type="submit" /> -->
	</form>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pw = request.getParameter("password");
	String address = request.getParameter("address");


	System.out.println(pw);//이거 어디에 출력되는거야?
	%>
	이름:<%=name%><br /> email:<%=email%><br /> password: 표시되지 않음
	<br /> address:<%=address%>
</body>

</html>