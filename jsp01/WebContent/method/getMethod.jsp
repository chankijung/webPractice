<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> getMethod.jsp<br>
	사용자 요청값:
	<b><% 
	String s =request.getParameter("n");
	if(s.equals("홍길동")){
		out.print("인증 성공");
	}else{
		out.print("인증 실패");
	}%><br></b>
	
	주소지 :
	<% 
	String s1 = request.getParameter("n1");
	String s2 = request.getParameter("n2");
	if(s1.equals("마포")){
		out.print("맞음");
	}else{
		out.print("아님");
	}%><br>
	사는곳 :
	<%
	if(s2.equals("아파트")){
		out.print("좋은곳");
	}else{
		out.print("나쁜곳");
	}
	%><br>
</body>
</html>