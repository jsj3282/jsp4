<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:requestEncoding value="utf-8"/>
	<header>
		<%@ include file="../default/header.jsp" %>
	</header>
	<h1 align="center">회원 목록</h1>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<c:set var="members" value="${dao.memberView() }"/>
		<table border="1" align="center">
		<tr>
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>주소</th><th>전화번호</th>
		</tr>
		<c:choose>
			<c:when test="${members.size() != 0 }">
				<c:forEach var="mem" items="${members }">
				<tr>
				<td><a href="userInfo.jsp?id=${mem.getId()}">${mem.getId() }</a></td>
				<td>${mem.getPwd() }</td>
				<td>${mem.getName() }</td>
				<td>${mem.getAddr() }</td>
				<td>${mem.getTel() }</td>
				</c:forEach>
			</c:when>
		</c:choose>
		</table>
	<footer>
		<%@ include file="../default/footer.jsp" %>
	</footer>	
</body>
</html>