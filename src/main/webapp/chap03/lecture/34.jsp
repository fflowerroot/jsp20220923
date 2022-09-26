<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		이름:<input type="text" name="name" /><br /> email:<input type="email"
			name="email" /><br /> address:<input type="text" name="address" /><br />
			<input
			type="submit" /> 
			<!-- get방식의 제출은 post방식까지 제출되는데 post방식 form 의 제출은 get방식 같이 제출 안되는거야?-->
	</form>
	
	<form action="" method="post">
		password:<input type="password" name="password" /><br /> <input
			type="submit" />
	</form>

	<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pw = request.getParameter("password");
	String address = request.getParameter("address");
	/* if (name == null) {
		tel = "";
	}

	if (foods == null) {
		foods = new String[]{};
	} */

	System.out.println(pw);
	%>
	이름:<%=name%><br /> email:<%=email%><br /> password: 표시되지 않음
	<br /> address:<%=address%>
</body>

</html>