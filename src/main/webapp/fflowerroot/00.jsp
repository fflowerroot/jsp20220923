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

*클래스레벨로 작성된다는게 뭐야?>>_jspservice()메서드 밖에 클래스 영역에 작성된다는.. 스크립트 릿은 저 메서드 안쪽에 작성되는거고, 표현식은 out.print()의 파라미터로 들어가는 거고..
Html코드는.. write메서드의 파라미터??

*만든 앱은 톰캣 위에서 돌아감.
톰캣이 리퀘스트 객체 만들어서 _jspservice()의 파라미터로 넣어서 실행해줌.
실제 인스턴스(객체)의 타입은 RequestFacade임.

*브라우저가 서버에 요청을 보냄.
요청보낼 때 주소만 입력하면 리퀘스트 보내짐.
그러면 톰캣이 httpservletRequest 타입에 담아 넣음.
그 인스턴스를 _jspService()실행시 파라미터로 넣음.
~Request가 어떤 메서드를 실행해서 담긴 정보를 읽을 수 있음.
여기서 사용하는 타입들(클래스와 인터페이스)의 정보는 java ee(엔터프라이즈 에디션-웹? 만들 때...) api에서 볼 수 있음.
예전에 사용했던 api는 standard 에디션(se).

*브라우저가 보낸 많은 정보를 웹서버가 잘게 쪼겐 다음에 request객체에 넣어 놓고 우리가 만든 jsp에 보내줌.
웹브라우저 정보를 알고싶으면 리퀘스트 객체로부터 얻을 수 있음

<hr />

https://

www.google.com/

search?

q=javax
&oq=java
&aqs=chrome.0.69i59j69i57j69i59j69i60j69i65l3j69i60.631j0j9
&sourceid=chrome
&ie=UTF-8

<hr />

https://

kin.naver.com/

search/list.naver?

query=a

<hr />

port가 뭐지..

<hr />
<%= request.getLocalPort()%> <br />
request.getLocalPort()<br />
<%out.write(request.getLocalPort());%><br /> 
>> out.write메서드에 파라미터가 int인건 없어서? char는 있는데, int를 char로 변환하는 듯.<br />
<%= (char)request.getLocalPort() %><br />
<hr />
<%= request.getLocalPort()%> <br />
<%= request.getServerPort() %><br />
<%= request.getRemotePort() %><br />

<hr />
입력한  url의 정보를 request 객체에 넣음. 톰캣이? <br />
url에서 prameter 정보를 request 객체에 넘김. <br />
브라우저(클라이언트)가 요청하면서 넘긴 정보들로 코드를 작성.
 

<%=request.getParameter("q") %><br />
<%=request.getParameterValues("q")[0]+","+request.getParameterValues("q")[1] %>	<br />
getParameter는 null이면 null로 출력되는데 getParameterValues는 null이면 nullPointerExeption발생함..
<hr />
<!-- 어떻게 검색창에 입력한 값이 request객체의 파라미터로 넘어오나?<br /> -->
<!-- >> html element의 form element  -->

<!-- text input field? -->
<!-- submit button? -->

<!-- <form action=""> -->
<!-- <input type="text" name="name" /> -->
<!-- <input type="submit" /> -->
<%-- <%= request.getParameter("name") %> --%>
<!-- </form> -->




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</body>
</html>






















