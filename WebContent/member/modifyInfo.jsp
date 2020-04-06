<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="changeUser.jsp" method="post">
		<input type="hidden" name="id" value="${param.id }">
	이 름 <input type="text" name="name"><br>
	주 소 <input type="text" name="addr"><br>
	전화번호<input type="text" name="tel"><br>
	<input type="submit" value="완료">
	<input type="button" value="취소" onclick="location.href='userInfo.jsp';">
	</form>
</body>
</html>