<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- form>(input[name="scores"]+br)*3+input:s -->
<form action="">
	<input type="text" name="scores" value="100"/>
	<br />
	<input type="text" name="scores" value="90"/>
	<br />
	<input type="text" name="scores" value="80"/>
	<br />
	<input type="submit" value=" average" />
</form>
<hr>
<%String[] scores= request.getParameterValues("scores");
if(scores!=null){
	double avg = (scores[0]+scores[1]+scores[2])/3;
}%>

</body>
</html>