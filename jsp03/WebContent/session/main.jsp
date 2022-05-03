<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>
<%
if(session.getAttribute("nick")==null){
%> 
<script type="text/javascript">
	alert('로그인 하세요')
	location.href="login.jsp"
</script>
<% }
%>
<h3>로그인 성공한 사람만 접근 가능</h3>
<b><%= session.getAttribute("nick") %></b>
님 환영합니다
<hr>
<a href="login.jsp">로그인</a>
<a href="logout.jsp">로그아웃</a>


</body>
</html>