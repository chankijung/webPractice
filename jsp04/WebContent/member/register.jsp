<%@page import="member.MemberDTO"%>
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
<body>register.jsp<br><hr>
	<jsp:useBean id="dto1" class="member.MemberDTO"/>
	<jsp:setProperty property="*" name="dto1"/>
	
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
	
	/* MemberDTO dto = new MemberDTO();
	dto.setId( request.getParameter("id"));
	dto.setPwd( request.getParameter("pwd"));
	dto.setName( request.getParameter("name"));
	dto.setAddr( request.getParameter("addr"));
	dto.setTel( request.getParameter("tel")); */
	
	
	Connection con = MemberDAO.getConnection();
	String sql ="insert into members values(?,?,?,?,?)";
	int result=0;
	
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, request.getParameter("id"));
	ps.setString(2, request.getParameter("pwd"));
	ps.setString(3, request.getParameter("name"));
	ps.setString(4, request.getParameter("addr"));
	ps.setString(5, request.getParameter("tel"));
	result = ps.executeUpdate();
	%>
	<a href="memberView.jsp">멤버뷰 페이지 이동</a>
	
</body>
</html>