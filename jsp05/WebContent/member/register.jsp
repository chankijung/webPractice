<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="dto" class="member.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<jsp:useBean id="dao" class="member.MemberDAO"/>
	<% dao.register(dto);%>
	<script type="text/javascript">
	alert('회원가입성공')
	location.href="login.jsp"
	</script>
</body>
</html>