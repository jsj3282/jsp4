<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		function delete1(){
			alert("정말 삭제하시겠습니까??")
			location.href="delete.jsp?id="+"<%= id %>"+"&pwd="+"<%= pwd%>";
		}
	</script>
</head>
<body>
	<header>
		<%@include file="../default/header.jsp" %>
	</header>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	 <jsp:useBean id="dto" class="members.MemberDTO"/>
   <jsp:setProperty property="*" name="dto"/>
	<%!
	String id =	null;
	String pwd = null;
	%>
	<%	
		MemberDTO member = dao.userInfo(dto.getId());
		System.out.println(request.getParameter("id"));
		out.print("<h1>개인 정보</h1><br>");
		out.print("아 이 디 " + member.getId() + "<br>");
		out.print("비밀번호 " + member.getPwd() + "<br>");
		out.print("이     름 " + member.getName() + "<br>");
		out.print("주     소 " + member.getAddr() + "<br>");
		out.print("전화번호 " + member.getTel() + "<br>");
		 id = member.getId();
		 pwd = member.getPwd();
		 System.out.println(pwd);
		//session.setAttribute("id", member.getId());
		//session.setAttribute("pwd", member.getPwd());
	%>
	<input type="button" value="수정" onclick="location.href='modifyInfo.jsp?id=<%=member.getId()%>';"> 
	<input type="button" value="삭제" onclick="delete1()">
	<footer>
		<%@include file="../default/footer.jsp" %>
	</footer>
		
</body>
</html>


