<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>check.jsp<br>
	<% 
		request.setCharacterEncoding("UTF-8");
		String id =request.getParameter("id");
	    String pwd= request.getParameter("pwd");
	    String DBid ="1", DBpwd="1";
	    if(DBid.equals(id) && DBpwd.equals(pwd)){
	    	%>
	    	<script type='text/javascript'>
				alert("로그인성공");
				location.href='main.jsp'
			</script>
	    	<%
	    	//response.sendRedirect("main.jsp");
	    	//서버단에서 , 클라이언트단에서 써야하는 언어가 다르다.
	    	// 서버단에서 실행되면 클라이언트 단의 것이 실행이 안된다(이게 맞는 설명인가?)
	    	
	    }else{
	    	response.sendRedirect("login.jsp");
	    }
	
	%>
	<%=id %><br>
	<%= pwd %>

</body>
</html>