<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="quiz_01_1.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function register(){
	var num = document.getElementById("num");
	var name = document.getElementById("name");
	var phNum = document.getElementById("phNum");
	var addr = document.getElementById("addr");
	var regDate = document.getElementById("regDate");
	var grade = document.getElementById("grade");
	var code = document.getElementById("code");
	if(num.value == ""){
		alert("번호 입력")
		num.focus()
	}else if(name.value ==""){
		alert("이름 입력")
		name.focus()
	}else if(phNum.value ==""){
		alert("전화번호 입력")
		phNum.focus()
	}else if(addr.value ==""){
		alert("주소 입력")
		addr.focus()
	}else if(regDate.value ==""){
		alert("가입날짜 입력")
		regDate.focus()
	}else if(grade.value ==""){
		alert("등급입력")
		grade.focus()
	}else if(code.value ==""){
		alert("도시코드 입력")
		code.focus()
	}else{
		alert("회원등록이 완료되었습니다")
		fo.submit()
	}
	/*
	if(phNum.value !=""){
		//str.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/);
		var p = phNum.value
		alert(p.search(/^[0-9]/))
		var regex = /[^0-9]/g;				// 숫자가 아닌 문자열을 매칭하는 정규식
		var result = p.search(regex);	// 원래 문자열에서 숫자가 아닌 모든 문자열을 빈 문자로 변경
		alert(result);
	}
	*/
}     

</script>

</head>
<body onload="init()">

<%
	Connection con =  DBConnect.getConnection();
	String sql = "select max(custno) from member_tbl_02";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		System.out.println( rs.getInt("max(custno)") );
		System.out.println( rs.getInt(1) );
		%>
		<script type="text/javascript">
		function init(){
			document.getElementById("num").value=<%=rs.getInt(1) %>+1
			let d = new Date();
			let year = d.getFullYear(); // 년도
			let month = d.getMonth() + 1;  // 월
			let date = d.getDate();  // 날짜
			console.log(year)
			console.log(month)
			console.log(date)
			document.getElementById("regDate").value=year+""+month+""+date
		}
		</script>
	<%}
%>

<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<form id="fo" action="register.jsp">
<table border="1">
	<tr>
		<th>회원번호(자동발생)</th> 
		<td>
			<input type="text" id="num" name="custno">
		</td>
	</tr>
	<tr>
		<th>회원성명</th> 
		<td>
			<input type="text" id="name" name="custname">
		</td>
	</tr>
	<tr>
		<th>회원전화</th> 
		<td>
			<input type="text" maxlength="13" id="phNum" name="phone">
		</td>
	</tr>
	<tr>
		<th>회원주소</th> 
		<td>
			<input type="text" id="addr" name="address">
		</td>
	</tr>
	<tr>
		<th>회원가입일자</th> 
		<td>
			<input type="text" id="regDate" name="joindate">
		</td>
	</tr>
	<tr>
		<th>고객등급(A:VIP, B:일반, C:직원)</th> 
		<td>
			<input type="text" id="grade" name="grade">
		</td>
	</tr>
	<tr>
		<th>도시코드</th> 
		<td>
			<input type="text" id="code" name="city">
		</td>
	</tr>
	<tr>
		
<td colspan="2">
	<input type="button" onclick="register()" value="등록">
	<input type="button" value="조회">
</td>
	</tr>
</table>
</form>
</section>

<%@ include file="footer.jsp" %>
</body>
</html>







