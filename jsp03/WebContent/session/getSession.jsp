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
	session.getAttribute("id");
	session.getAttribute("age");
%>
id:<%= session.getAttribute("id") %><br>
	age :<%= session.getAttribute("age") %><br>
	<a href="setSession.jsp">set</a>
	<a href="delSession.jsp">del</a>
</body>
</html>