<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dto" class="member.MemberDTO"></jsp:useBean>
	
	<%-- 	MemberDTO dto= new MemberDTO();  위와 아래는 같은 의미--%>
	<%
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		dto.setId(id);
		dto.setPwd(pwd);
	%>
	id : <%= dto.getId()%><br>
	pwd : <%= dto.getPwd()%><br>
	
</body>
</html>