<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function reg(){
	var id= document.getElementById("id")
	var pwd= document.getElementById("pwd")
	var name= document.getElementById("name")
	var addr= document.getElementById("addr")
	var tel= document.getElementById("tel")
	if(id.value==""){
		alert('아이디는 필수 항목입니다')
		id.focus
	}else if(pwd.value==""){
		alert('비밀번호는 필수 항목입니다')
		pwd.focus
	}else if(name.value==""){
		alert('이름은 필수 항목입니다')
		name.focus
	}else if(addr.value==""){
		alert('주소는 필수 항목입니다')
		addr.focus
	}else if(tel.value==""){
		alert('전화번혼는 필수 항목입니다')
		tel.focus
	}else{
		fo.submit()
	}
}
</script>
</head>
<body>
	<jsp:useBean id="dao" class="member.MemberDAO"/>
	<%@ include file="../default/header.jsp" %>
	<div class="wrap content">
	<form id="fo" action="register.jsp" method="post">
		<input type="text" id="id" name="id"><br>
		<input type="text" id="pwd" name="pwd"><br>
		<input type="text" id="name" name="name"><br>
		<input type="text" id="addr" name="addr"><br>
		<input type="text" id="tel" name="tel"><br>
		<input type ="button" value="가입" onclick="reg()">
	</form>
	
	</div>
</body>
</html>