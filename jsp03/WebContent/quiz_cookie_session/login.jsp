<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	div{
	background-color: gray;
	color:aqua;
	}
	h1{
	font: bold;
	}
</style>
<body>
	<%@ include file="index.jsp" %>
	
	<div>Care Lab</div>
	<h1>저희 사이트에 방문하신걸 환영합니다</h1>
	
	<%
	if(session.getAttribute("nick")==null){
		%>
		<form action="chk.jsp">
		아이디 :<input type="text" name="id" ><br>
		비밀번호 :<input type="text" name="pwd" ><br>
		<input type="submit" value="로그인"><br>
		</form>
	<%}else{
		
		out.print("<b>"+session.getAttribute("nick")+"</b>");
		out.print("환영합니다");
		out.print("<a href='main.jsp'>main이동</a>");
	}%>

</body>
</html>