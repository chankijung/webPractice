<%@page import="java.sql.Connection"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>login.jsp<br>
<form action="loginChk.jsp" method='post'>
	<input type ="text" name="id"><br>
	<input type ="text" name="pwd"><br>
	<input type ="submit"value="로그인"><br>

</form>
<hr>
<h3>loginChk2로 이동</h3>
<form action="loginChk2.jsp" method='post'>
	<input type ="text" name="id"><br>
	<input type ="text" name="pwd"><br>
	<input type ="text" name="name"><br>
	<input type ="submit"value="로그인"><br>

</form>
<%
	Connection con =MemberDAO.getConnection();
	// 컨트롤 스페이스바를 해줘야 객체생성됨
	//ojdbc6 넣어야함 lib에
	//c드라이브, 오라클, product, jdbc 쭉 타고 들어가면 있음
	
%>

</body>
</html>