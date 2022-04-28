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
		String n =request.getParameter("n");
		String v1 = request.getParameter("v1");
		
	%>
	<h1>입력하신 수는 <%=n %>이고</h1>
	<h1>당신은 <%=v1%>이군요</h1>
</body>
</html>