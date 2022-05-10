<%@page import="java.sql.*"%>
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
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
	<%
		String id = request.getParameter("id");
	Connection con = MemberDAO.getConnection();
	String sql = 
			"select * from members where id='"+id+"'";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs =  ps.executeQuery();
	if(rs.next()){	%>
	<form action="modify.jsp" method="post">
		<input type="text" readonly name="id"
			value="<%=rs.getString("id") %>"><br>
		<input type="text" name="pwd"
			value="<%=rs.getString("pwd") %>"><br>
		<input type="text" name="name"
			value="<%=rs.getString("name") %>"><br>
		<input type="text" name="addr"
			value="<%=rs.getString("addr") %>"><br>
		<input type="text" name="tel"
			value="<%=rs.getString("tel") %>"><br>
		<input type="submit" value="수정">
	</form>
	<%} %>
</body>
</html>









