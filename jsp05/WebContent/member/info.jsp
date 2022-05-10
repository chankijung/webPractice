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
<body>info.jsp<br>
	<%
		String id = request.getParameter("id");
		System.out.println("id"+id);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.getInfo(id);
		
	
	%>
	<%@ include file="../default/header.jsp" %>
	
	<div class="wrap content">
	<table border ="1">
		<tr>
			<th>아이디</th><td><%=dto.getId() %></td>
		</tr>
		<tr>
			<th>비밀번호</th><td><%=dto.getPwd() %></td>
		</tr>
		<tr>
			<th>이름</th><td><%=dto.getName() %></td>
		</tr>
		<tr>
			<th>주소</th><td><%=dto.getAddr() %></td>
		</tr>
		<tr>
			<th>전화번호</th><td><%=dto.getTel() %></td>
		</tr>
		<tr>
			<td colspan="2">
			<button type="button" onclick="location.href='modify_form.jsp?id=<%=dto.getId()%>'">수정</button>
			<button  type="button" onclick="del()">삭제</button>
			</td>
		</tr>
	</table>
	</div>
	<script type="text/javascript">
function del(){
	var re = confirm("정말로 삭제하시겠습니까?")
	if(re){
		location.href="delete.jsp?id=<%=dto.getId()%>"
	}
}
</script>

</body>
</html>