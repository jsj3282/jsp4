<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mb" class="members.MemberDTO"/>
	id : <jsp:getProperty property="id" name="mb"/><br>
	pwd : <jsp:getProperty property="pwd" name="mb"/><br>
	<hr>
	<jsp:setProperty property="id" name="mb"/>
	<jsp:setProperty property="pwd" name="mb"/>
	id : <jsp:getProperty property="id" name="mb"/><br>
	pwd : <jsp:getProperty property="pwd" name="mb"/><br>
	<!-- class, name속성, property속성의 이름 값이 모두 똑같아야 함 
	jsp:setProperty태그는 <%--태그에서 만든 객체와 혼용할 수 없다--%>-->
</body>
</html>