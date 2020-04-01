<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String user = request.getParameter("user");
		String str = "test.jsp";
		if(user.equals("user")){
				
		//<!-- 직접 response.sendRedirect를 써서 넘겨주면 request.getParameter는 
		//현재 페이지에서만 쓸수 있기 때문에 넘어가지 앟는다, 그래서 jsp:forward 사용 
		//그리고 추가할 값이 있다면 jsp:param 태그를 사용해 넘겨줌 -->
	%>
		<jsp:forward page="userPage.jsp">
			<jsp:param value="param_user" name="name"/>
		</jsp:forward>
	<%}else{ %>
		<jsp:forward page="adminPage.jsp">
			<jsp:param value="param_admin" name="name"/>
		</jsp:forward>
	<%} %>

</body>
</html>