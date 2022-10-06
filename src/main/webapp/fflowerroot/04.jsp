<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
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
<h5>컴포넌트</h5> <br>
<h5>모듈</h5> <br>

<h5>JDK</h5> 
<p>:DK이란 JDK, Java Development Kit 의 약자로 Java 를 활용하여 프로그램을 개발할 때 필요한 도구 모음입니다. 이때, 실제로 프로그램을 실행시켜보아야 하기 때문에 JRE 가 포함이 되어 있습니다.</p><br>
<h5>JRE </h5>:  
<a href = "https://www.infoworld.com/article/3304858/what-is-the-jre-introduction-to-the-java-runtime-environment.html">What is the JRE? Introduction to the Java Runtime Environment</a><br><br>
<h5>JVM </h5><br>
<p> JVM은 자바 소스코드로부터 만들어지는 자바 바이너리 파일(.class)을 실행할 수 있다. 또한 JVM은 플랫폼에 의존적이다. 즉 리눅스의 JVM과 윈도우즈의 JVM은 다르다. 단, 컴파일된 바이너리 코드는 어떤 JVM에서도 동작시킬 수 있다.</p>
<h5>OS <br><br>
<h5>Class Path </h5>
<a href="https://effectivesquid.tistory.com/entry/%EC%9E%90%EB%B0%94-%ED%81%B4%EB%9E%98%EC%8A%A4%ED%8C%A8%EC%8A%A4classpath%EB%9E%80">Class Path</a>
<p>클래스패스란 말 그대로 클래스를 찾기위한 경로이다. 자바에서 클래스패스의 의미도 똑같다. 즉, JVM이 프로그램을 실행할 때, 클래스파일을 찾는 데 기준이 되는 파일 경로를 말하는 것이다. 소스 코드(.java로 끝나는 파일)를 컴파일하면 소스 코드가 “바이트 코드”(바이너리 형태의 .class 파일)로 변환된다. java runtime(java 또는 jre)으로 이 .class 파일에 포함된 명령을 실행하려면, 먼저 이 파일을 찾을 수 있어야 한다. 이때 .class 파일을 찾을 때 classpath에 지정된 경로를 사용한다. classpath는 .class 파일이 포함된 디렉토리와 파일을 콜론으로 구분한 목록이다. java runtime은 이 classpath에 지정된 경로를 모두 검색해서 특정 클래스에 대한 코드가 포함된 .class 파일을 찾는다. 찾으려는 클래스 코드가 포함된 .class 파일을 찾으면 첫 번째로 찾은 파일을 사용한다.

classpath를 지정할 수 있는 두 가지 방법이 있다. 하나는 환경 변수 CLASSPATH를 사용하는 방법이고, 또 하나는 java runtime에 -classpath 플래그를 사용하는 방법이다. (-classpath 플래그 사용에 대한 자세한 설명은 java 메뉴얼 페이지를 참조하라.) <br />
 </p><br /> <br />


<h5>소스코드(.java)를 컴파일하면 바이트코드(바이너리형태의 .class파일)이 됨.</h5> <br />

	<p>※ 어쨌든 JDK안에 모두 다 들어 있다. <br />
      "JDK > JRE > JVM" <br />
      <h5>IDE</h5>
      비주얼 스튜디오, 이클립스, 파이참 같은 것들이 IDE임. 편리한 코딩문서 작업기라고 보면 됨


</p>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</body>
</html>


















