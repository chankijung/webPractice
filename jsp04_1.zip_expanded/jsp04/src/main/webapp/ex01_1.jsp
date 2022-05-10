<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>ex01_1.jsp<br>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	
	if(id.equals("1")){
		//response.sendRedirect("ex01_2.jsp");
	%>	
	<jsp:forward page="ex01_2.jsp">
		<jsp:param value="안녕" name="test"/>
	</jsp:forward>
	<%}%>
</body>
</html>


















