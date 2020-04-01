<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>
	<%--@include file="jspInclude.jsp" --%>
	<jsp:include page="jspInclude.jsp"/>
	<br><%--=name --%> 반갑습니다.	
	<!-- include 태그를 쓰면 두개의 파일이 한개로 합쳐져서 jspInclude 파일에서 만든 변수를 쓸 수 있다. -->
</body>
</html>