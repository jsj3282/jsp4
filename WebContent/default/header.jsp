<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<!--${sessionScope.mySession }-->
		<div align="center">
		<c:choose>
			<c:when test="${sessionScope.mySession != null}">
				<h1 style="color:burlywood; font-size:60px; font-family:Gabriola;">CARE &nbsp; LAB</h1>
				<hr>
				<a href="../member/index.jsp">HOME</a>
				&nbsp;&nbsp;&nbsp;
				<a href="../member/memberInfo.jsp">회원 정보</a>
				&nbsp;&nbsp;&nbsp;
				<a href="../member/logout.jsp">로그아웃</a>
				<hr>
			</c:when>
			<c:when test="${sessionScope.mySession == null }">
			<h1 style="color:burlywood; font-size:60px; font-family:Gabriola;">CARE &nbsp; LAB</h1>
			<hr>
			<a href="../member/index.jsp">HOME</a>
			&nbsp;&nbsp;&nbsp;
			<a href="../member/login.jsp">로그인</a>
		<hr>
			</c:when>
		</c:choose>
		</div>		
</body>
</html>