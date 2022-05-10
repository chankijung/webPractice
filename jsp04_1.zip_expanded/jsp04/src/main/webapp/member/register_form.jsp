<%@page import="java.sql.*"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<form action="register.jsp" method="post">
	<input type="text" name="id"><br>
	<input type="text" name="pwd"><br>
	<input type="text" name="name"><br>
	<input type="text" name="addr"><br>
	<input type="text" name="tel"><br>
	<input type="submit" value="저장">
</form>
	
</body>
</html>









