<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>memberinfo.jsp
	<%@ include file="../default/header.jsp" %>
	<jsp:useBean id="dao" class="member.MemberDAO"/>
	<%
	ArrayList<MemberDTO> list= dao.getList();
	%>
	<div class="wrap content">
		<table border="1">
			<tr>
				<th>이름</th> <th>주소</th> <th>전화번호</th> 
			</tr>
			<%for(MemberDTO d:list){ %>
			<tr>
				<td><a href="info.jsp?id=<%=d.getId()%>">
				<%=d.getName() %></td>
				<td><%=d.getAddr() %></td>
				<td><%=d.getTel() %></td>
			</tr>
			<%} %> 
		</table>
	</div>
	<%@ include file="../default/footer.jsp" %>

</body>
</html>