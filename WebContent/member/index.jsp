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
	<div align="center">
		<article>
			<b>내 사전에 불가능은 없다.<br>
			불가능은 소극적인 자의 환영이며<br>
			비겁한 자의 도피처 이다.<br></b>
		</article>
		<br><br>
		<aside style="margin-left:30%"><b>- 나폴레옹</b></aside>		
	</div>
	<footer>
		<%@include file="../default/footer.jsp" %>
	</footer>
</body>
</html>
