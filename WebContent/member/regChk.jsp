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
		int i = dao.regChk(request.getParameter("id"),
				request.getParameter("pwd"),
				request.getParameter("name"),
				request.getParameter("addr"),
				request.getParameter("tel"));
		if(i==1){%>
			<script>
				alert("회원가입 성공!!")
			</script>
			<%
				session.setAttribute("id", request.getParameter("id"));
				response.sendRedirect("index.jsp");
			
		}else if(i==0){%>
			<script>
				alert("이미 동일한 아이디가 존재합니다!!")
			</script>
			<%
				response.sendRedirect("register.jsp");
		}else if(i==-1){%>
			<script>
				alter("sql 오류 발생")
			</script>
			<%
				response.sendRedirect("register.jsp");
		}%>
</body>
</html>