<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
	<header>
		<%@ include file="../default/header.jsp" %>
	</header>
	<h1 align="center">회원 목록</h1>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
		<%	
			out.print("<table border='1' align='center'><tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>주소</th><th>전화번호</th></tr>");
			ArrayList<MemberDTO> list = dao.memberView();
			if(list.size() != 0){%>
				<%for(MemberDTO m : list){%>
				<tr>
				<td>
					<a href="userInfo.jsp?id=<%=m.getId()%>"><%=m.getId()%></a>
				</td>
				<td><%=m.getPwd() %></td>
				<td><%=m.getName() %></td>
				<td><%=m.getAddr() %></td>
				<td><%=m.getTel() %></td>
				</tr>
				<%}%>
			</table>
		<%}%>
	<footer>
		<%@ include file="../default/footer.jsp" %>
	</footer>	
</body>
</html>