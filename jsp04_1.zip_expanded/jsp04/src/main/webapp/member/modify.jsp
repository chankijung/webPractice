<%@page import="member.MemberDAO"%>
<%@page import="java.sql.*"%>
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
<%--
	<jsp:useBean id="dto" class="member.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
 --%>
 <%
 request.setCharacterEncoding("utf-8");
 response.setCharacterEncoding("utf-8");
 
 
 String id = request.getParameter("id");
 String pwd = request.getParameter("pwd");
 String addr = request.getParameter("addr");
 String tel = request.getParameter("tel");
 String name = request.getParameter("name");

Connection con = MemberDAO.getConnection();
String sql = 
"update members set pwd=?,addr=?,tel=?,name=? where id=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, pwd);
ps.setString(2, addr);
ps.setString(3, tel);
ps.setString(4, name);
ps.setString(5, id);
ps.executeUpdate();
 response.sendRedirect("info.jsp?id="+id);
 %>
</body>
</html>










