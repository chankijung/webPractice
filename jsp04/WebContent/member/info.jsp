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
<body> info.jsp<br><hr>
	
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		Connection con = MemberDAO.getConnection();
		String id= request.getParameter("id");
		String sql = "select * from members where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, request.getParameter("id"));
		//request.getParameter("id") == id
		ResultSet rs = ps.executeQuery();
		if(rs.next()){%>
		 	id : <%= rs.getString("id") %><br>
		 	pwd : <%= rs.getString("pwd") %><br>
		 	name : <%= rs.getString("name") %><br>
		 	addr : <%= rs.getString("addr") %><br>
		<%}	%>
		<hr>
		<input type="button" value ="수정"onclick="location.href='updateForm.jsp'">
		<input type="button" value="삭제" onclick="location.href='delete.jsp'">
		
</body>
</html>