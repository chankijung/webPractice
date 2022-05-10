<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
	id : <%= request.getParameter("id") %>
	<%
		Connection con = MemberDAO.getConnection();
		String id = request.getParameter("id");
		String sql = "select * from members where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, request.getParameter("id") );
		ResultSet rs = ps.executeQuery();
		if(rs.next()){%>
			id : <%= rs.getString("id") %><br>
			name : <%= rs.getString("name") %><br>
			addr : <%= rs.getString("addr") %><br>
			<button type="button" 
		onclick="location.href='delete.jsp?id=<%= rs.getString("id") %>'">
			삭제
		</button>
		<%-- 
		<a 
		href="modify_form.jsp?id=<%= rs.getString("id") %>& name=<%= rs.getString("name") %>">
			삭제
		</a>
		--%>
		<a 
		href="modify_form.jsp?id=<%= rs.getString("id") %>">
			수정
		</a>
		<%}%>
		
</body>
</html>

















