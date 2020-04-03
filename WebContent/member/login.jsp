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
	<h1>로그인 페이지 입니다</h1>
	<form action="chkUser.jsp" method="post">
	<aside>
		<table>
			<tr>
				<td><input type="text" name="id" placeholder="로그인"></td>
				<td rowspan='2'><input type="submit" value="로그인"></td>
			</tr>
			<tr>
				<td><input type="text" name="pwd" placeholder="비밀번호"></td>
			</tr>
		</table>
		<a href="register.jsp">회원가입</a>
	</aside>
	</form>
	</div>
	<footer>
		<%@ include file="../default/footer.jsp" %>
	</footer>
</body>
</html>