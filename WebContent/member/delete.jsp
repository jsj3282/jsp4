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
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<c:set var = "i" value='${dao.delete(param.id, param.pwd) }'/>
	<c:choose>
		<c:when test="${i==1 }">
			<script>
				alert("삭제에 성공했습니다!!")
				location.href = "memberInfo.jsp";
			</script>	
		</c:when>
		<c:when test="${i==0 }">
			<script>
				alert("삭제에 실패했습니다!!!")
				location.href = "modifyInfo.jsp";
			</script>
		</c:when>
	</c:choose>
</body>
</html>