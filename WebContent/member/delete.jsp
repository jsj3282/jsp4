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
	request.setCharacterEncoding("utf-8");%>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%
		int i = dao.delete(request.getParameter("id"), request.getParameter("pwd"));
		if(i==1){%>
			<script>
				alert("삭제에 성공했습니다!!")
				location.href = "memberInfo.jsp";

			</script>			
		<%}else if(i==0){%>
			<script>
				alert("삭제에 실패했습니다!!!")
				location.href = "modifyInfo.jsp";
			</script>
		<%}%>
	
</body>
</html>