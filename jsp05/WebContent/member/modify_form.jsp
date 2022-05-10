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
<body>
	<%@ include file="../default/header.jsp" %>
	<% 
	String id =request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = dao.getInfo(id);
	
	%>
<div class="wrap content">
<form action="modify.jsp"method="post">
<table border ="1">
		<tr>
			<th>아이디</th>
			<td>
			<input type="text" name="id" readonly value="<%=dto.getId() %>">
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>
			<input type="password" name="pwd" value="<%=dto.getPwd() %>">
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" value="<%=dto.getName() %>"></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="addr" value="<%=dto.getAddr() %>"></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="tel" value="<%=dto.getTel() %>"></td>
		</tr>
		<tr>
			<td colspan="2">
			<button type="submit">수정</button>
			<button type="button" onclick="history.back()">이전</button>
			</td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>