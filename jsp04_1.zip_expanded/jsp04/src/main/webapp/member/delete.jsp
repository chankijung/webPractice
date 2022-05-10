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
	<%
		String delId = request.getParameter("id");
	Connection con = MemberDAO.getConnection();
	String sql = 
			"delete from members where id='"+delId+"'";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.executeUpdate();
	response.sendRedirect("memberView.jsp");
	%>
	<%=delId %>
</body>
</html>










