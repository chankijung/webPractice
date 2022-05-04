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
	String t = request.getParameter("test");
	String id = request.getParameter("id");
	%>
	id : <%= id %>
	test : <%= t %>
</body>
</html>








