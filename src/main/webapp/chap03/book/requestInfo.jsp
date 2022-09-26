<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 및 서버 정보</title>
</head>
<body>
클라이언트IP=<%= request.getRemoteAddr() %><br>
요청정보길이=<%= request.getContentLength() %><br>
요청정보 인코딩=<%= request.getCharacterEncoding() %><br>
요청정보 컨텐츠타입=<%= request.getContentType() %><br>

</body>
</html>