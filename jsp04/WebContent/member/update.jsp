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
	<jsp:useBean id="dto1" class="member.MemberDTO"/>
	<jsp:setProperty property="*" name="dto1"/>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	Connection con = MemberDAO.getConnection();
	//String id = request.getParameter("id");
	String sql = "update members set pwd=?, name=?, addr=?, tel=? where id=?";
	int result=0;
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,request.getParameter("pwd"));
	ps.setString(2,request.getParameter("name"));
	ps.setString(3,request.getParameter("addr"));
	ps.setString(4,request.getParameter("tel"));
	ps.setString(5,request.getParameter("id"));
	result=ps.executeUpdate();
	%>
	<a href="memberView.jsp">멤버뷰 페이지로 이동</a>
</body>
</html>