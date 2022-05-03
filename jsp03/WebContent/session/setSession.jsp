<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>set<br>
<%
	session.setAttribute("id","홍길동");
	session.setAttribute("age", "23");

%>
<h3>세션 설정 값 가져오기</h3>
	id:<%= session.getAttribute("id") %><br>
	age :<%= session.getAttribute("age") %><br>
	<a href="getSession.jsp">get</a>
	<a href="delSession.jsp">del</a>
	
	

</body>
</html>