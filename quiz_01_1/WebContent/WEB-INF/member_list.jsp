<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="quiz_01_1.DBConnect"%>
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
		Connection con = DBConnect.getConnection();
		String sql = "select * from member_tbl_02";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			SimpleDateFormat f = 
					new SimpleDateFormat("YYYYddMM");
			String s = f.format(rs.getDate("joindate"));
		%>
			<%=rs.getInt("custno") %>,&nbsp;
			<%= rs.getString("custname") %>,&nbsp;
			<%= rs.getString("phone") %>,&nbsp;
			<%= rs.getString("address") %>,&nbsp;
			<%= s %>,&nbsp;
			<%= rs.getString("grade") %>,&nbsp;
			<%= rs.getString("city") %><hr>
		<%}
		
	%>
</body>
</html>






