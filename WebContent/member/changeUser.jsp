<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<c:set var = "i" value='${dao.changeUser(param.id, param.name, param.addr, param.tel) }'/>
	<c:choose>
		<c:when test="${i==1 }">
			<script type="text/javascript">
				alert("수정 성공!!")
				location.href = "memberInfo.jsp"
			</script>
		</c:when>
		<c:when test="${i==0 }">
			<script type="text/javascript">
				alert("수정 실패!!!");
				location.href="userInfo.jsp?id="+${param.id}
			</script>
		</c:when>
	</c:choose>
</body>
</html>