<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dto" class="member.MemberDTO"/>
	<%-- MemberDTO dto1 = new MemberDTO(); --%>
	<%
		MemberDTO dto1 = new MemberDTO();
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		dto1.setId(id);
		dto1.setPwd(pwd);
	%>
	id : <%= dto1.getId() %><br>
	pwd : <%= dto1.getPwd() %><br>
</body>
</html>











