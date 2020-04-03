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
		String sessionvalue = (String)session.getAttribute("id");
		System.out.println("-----------------------" + sessionvalue);
	%>
		<div align="center">
		<% if(sessionvalue!=null){%>
			<h1 style="color:burlywood; font-size:60px; font-family:Gabriola;">CARE &nbsp; LAB</h1>
			<hr>
			<a href="../member/index.jsp">HOME</a>
			&nbsp;&nbsp;&nbsp;
			<a href="../member/memberInfo.jsp">회원 정보</a>
			&nbsp;&nbsp;&nbsp;
			<a href="../member/logout.jsp">로그아웃</a>
			<hr>
		<%}else if(sessionvalue==null){%>
			<h1 style="color:burlywood; font-size:60px; font-family:Gabriola;">CARE &nbsp; LAB</h1>
		<hr>
			<a href="../member/index.jsp">HOME</a>
			&nbsp;&nbsp;&nbsp;
			<a href="../member/login.jsp">로그인</a>
		<hr>
		<%}%>
		</div>		
</body>
</html>