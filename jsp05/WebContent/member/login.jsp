<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<div class="wrap content">
		<div align="right">
		<%if(session.getAttribute("id")== null){
			%>
		
		<form action="/jsp05/member/loginChk.jsp" 
						method="post">
			<input type="text" name="id" 
							placeholder="input id"><br>
			<input type="password" name="pwd" 
						placeholder="input password"><br>
			<input type="submit" value="로그인">
			<a href="register_form.jsp">회원가입</a>
		</form>
		<%}else{%>
			<%= session.getAttribute("name") %>님 로그인 상태입니다
		<%} %>
		</div>
	</div>
	<%@ include file="../default/footer.jsp" %>
</body>
</html>










