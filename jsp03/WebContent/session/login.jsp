<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>login.jsp<br>
	<%@ include file="getSession.jsp" %>
	<!--
		 인클루드 지시자
		원하는 파일을 현재 파일로 불러 옴
	 -->
	<%if(session.getAttribute("nick")==null){
		%>
		<form action="chk.jsp">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="로그인"><br>
		</form>
	<%}else{
		out.print("<b>"+session.getAttribute("nick")+"</b>");
		out.print("환영합니다");
		out.print("<a href='main.jsp'>main이동</a>");
	}
		
		
		%>
	
	
</body>
</html>