<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chk.jsp<br>
	<%
	String DBid="1", DBpwd="1";
	String uId= request.getParameter("id");
	String uPwd= request.getParameter("pwd");
	if(DBid.equals(uId) && DBpwd.equals(uPwd)){
		session.setAttribute("nick", "홍길동");
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}
	
	%>

</body>
</html>