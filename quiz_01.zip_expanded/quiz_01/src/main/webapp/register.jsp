<%@page import="java.sql.PreparedStatement"%>
<%@page import="quiz_01.DBConnect"%>
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
		//String num = request.getParameter("custno");
		String name = request.getParameter("custname");
		String phNum = request.getParameter("phone");
		String addr = request.getParameter("address");
		//String regDate = request.getParameter("joindate");
		String grade = request.getParameter("grade");
		String code = request.getParameter("city");
		//System.out.println(num);
		System.out.println(name);
		System.out.println(phNum);
		
		Connection con = DBConnect.getConnection();
		String sql=
"insert into member_tbl_02(custno,custname,phone ,address ,joindate ,grade ,city ) "+
			"values(num.nextval,?,?,?,sysdate,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, phNum);
		ps.setString(3, addr);
		ps.setString(4, grade);
		ps.setString(5, code);
		ps.executeUpdate();
		response.sendRedirect("section01.jsp");
	%>
</body>
</html>





