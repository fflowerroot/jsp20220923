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
		통신사 :
		<!-- select>option[value="val$"]*3>lorem1 -->
		<select name="tel" id="">
			<option value="sk">sk</option>
			<%-- selected : 페이지 로딩시 선택되는 option --%>
			<option value="lg" selected>lg</option>
			<option value="kt">kt</option>
		</select>
		
		<br>
		메뉴 :
		<!-- select[name=sel2][multiple]>option[value="val$"]*3>lorem1 -->
		<select name="foods" id="" multiple>
			<option value="pizza1">pizza1</option>
			<option value="pizza2">pizza2</option>
			<option value="pizza3">pizza3</option>
		</select>
		
		<br>
		
		<input type="submit" value="전송">
	</form>
<%


String tel=request.getParameter("tel");
String[] foods=request.getParameterValues("foods");
if(tel==null){
	tel="";
}
if(foods==null){
	foods=new String[]{};
}

%>
통신사는 <%=tel %>이고 선택한 음식들은 <%=String.join(",", foods) %>입니다.


</body>
</html>