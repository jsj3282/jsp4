<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="mb" class="members.MemberDTO"/>
	<jsp:setProperty property="*" name="mb"/>
	id : <%=mb.getId() %><br>
	pwd : <%=mb.getPwd() %><br>
	name : <%=mb.getName() %><br>
	addr : <jsp:getProperty property="addr" name="mb"/><br>
	tel : <jsp:getProperty property="tel" name="mb"/>
</body>
</html>