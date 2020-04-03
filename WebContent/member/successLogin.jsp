<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");%>
	<header>
		<%@ include file="../default/header.jsp" %>
	</header>
	<div>
		<h1>로그인 성공</h1>
	</div>
	<footer>
		<%@ include file="../default/footer.jsp" %>
	</footer>
</body>
</html>