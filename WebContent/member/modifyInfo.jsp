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
	request.setCharacterEncoding("utf-8");System.out.print("value= "+request.getParameter("id"));%>
	
	<form action="changeUser.jsp" method="post">
		<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
	이 름 <input type="text" name="name"><br>
	주 소 <input type="text" name="addr"><br>
	전화번호<input type="text" name="tel"><br>
	<input type="submit" value="완료">
	<input type="button" value="취소" onclick="location.href='userInfo.jsp';">
	</form>
</body>
</html>