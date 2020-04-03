<%@page import="members.MemberDTO"%>
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
		System.out.print("id : "+request.getParameter("id"));
		MemberDTO dto = dao.userInfo(request.getParameter("id"));
		int i = dao.changeUser(request.getParameter("id"),request.getParameter("name"),request.getParameter("addr"),request.getParameter("tel"));
		System.out.println(i);
		if(i==1){%>
			<script type="text/javascript">
				alert("수정 성공!!");
				location.href="memberInfo.jsp"
			</script>
		<% response.sendRedirect("memberInfo.jsp");
			System.out.println("여기?1");
		}else if(i==0){%>
			<script>
				alert("수정 실패!!!");
				location.href="userInfo.jsp?id="+<%=dto.getId()%>
			</script>
		
	<%}%>
	
</body>
</html>