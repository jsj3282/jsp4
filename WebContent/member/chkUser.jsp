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
		int i = dao.chkuser(request.getParameter("id"), request.getParameter("pwd"));
		if(i==0){%>
			<script>
				alert("로그인 성공!!")
			</script>
		<% 
			out.print("hello~~~~~");
			session.setAttribute("id", request.getParameter("id"));
			response.sendRedirect("successLogin.jsp");
		}else if(i==1){%>
			<script>
				alert("비밀번호가 일치하지 않습니다.")
				location.href="login.jsp"
			</script>
		<%}else if(i==2){%>
			<script>
				alert("등록되지 않은 아이디 입니다.")
				location.href="login.jsp";
			</script>
			
		<%}%>
</body>
</html>