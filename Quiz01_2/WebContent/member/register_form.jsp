<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function reg(){
	var num = document.getElementById("num");
	var name = document.getElementById("name");
	var tel = document.getElementById("tel");
	var addr = document.getElementById("addr");
	var regDate = document.getElementById("regDate");
	var grade = document.getElementById("grade");
	var code = document.getElementById("code");
	
	if(num.value==""){
		alert('아이디는 필수 항목입니다')
		num.focus()
		
	}else if(fo.name.value==""){
		alert('이름은 필수 항목입니다')
		name.focus()
	}else if(tel.value==""){
		alert('전화번호는 필수 항목입니다')
		tel.focus()
	}else if(addr.value==""){
		alert('주소는 필수 항목입니다')
		addr.focus()
	}else if(regDate.value==""){
		alert('가입일자는 필수 항목입니다')
		regDate.focus()
	}else if(grade.value==""){
		alert('고객등급은 필수 항목입니다')
		grade.focus()
	}else if(code.value==""){
		alert('도시코드는 필수 항목입니다')
		code.focus()
	}else{
		alert("회원등록 완료")
		fo.submit()
	}
}
</script>
<body>
<%
	MemberDAO dao = new MemberDAO();
	dao.custnoMax();
%>

<%@ include file="../header.jsp" %>
<%@ include file="../nav.jsp" %>
<section>
	<%	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	%>
	

<form id="fo" action="register.jsp" method="post">
	<table border="1">
	<tr>
		<th>회원정보(자동발생)</th>
		<td><input type="text" id="num" name="custno"></td>

	</tr>
	<tr>
		<th>회원 성명</th>
		<td><input type="text" id="name" name="custname"></td>
	</tr>
	<tr>
		<th>회원 전화</th>
		<td><input type="text" maxlength="13" id="tel" name="phone"></td>
	</tr>
	<tr>
		<th>회원 주소</th>
		<td><input type="text" id="addr" name="address"></td>
	</tr>
	<tr>
		<th>가입일자</th>
		<td><input type="text" id="regDate" name="joindate"></td>
	</tr>
	<tr>
		<th>고객등급<br>(A:vip, B:일반, C:직원)</th>
		<td><input type="text" id="grade" name="grade"></td>
	</tr>
	<tr>
		<th>도시코드</th>
		<td><input type="text" id="code" name="city"></td>
	</tr>
	<tr>
	<th colspan="2">
		<input type="submit" onclick="reg()" value="등록">
		<input type="button" onclick="location.href='memberlist.jsp'" value="조회">
	</th>
	</tr>
	</table>
</form>

</section>
<%@ include file="../footer.jsp" %>
</body>
</html>