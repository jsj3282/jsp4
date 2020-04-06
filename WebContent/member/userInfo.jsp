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
			location.href="delete.jsp?id="+'${member.id}'+"&pwd="+'${member.pwd}';
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
   <c:set var="member" value='${dao.userInfo(dto.getId()) }' scope="page"/>
   <h1>개인 정보</h1>
   <h3>아이디 : ${member.id }</h3>                                                
   <h3>비밀번호 : ${member.pwd }</h3>
   <h3>이     름 : ${member.name }</h3>
   <h3>주     소 : ${member.addr }</h3>
   <h3>전화번호 : ${member.tel }</h3>
	<input type="button" value="수정" onclick="location.href='modifyInfo.jsp?id=${member.id}';"> 
	<input type="button" value="삭제" onclick="delete1()">
	<footer>
		<%@include file="../default/footer.jsp" %>
	</footer>
		
</body>
</html>


