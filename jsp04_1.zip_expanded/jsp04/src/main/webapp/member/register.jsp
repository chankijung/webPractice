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

<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
 <%
Connection con = MemberDAO.getConnection();
String sql = 
	"insert into members(id,pwd,name,addr,tel)"
			+" values(?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, dto.getId());
ps.setString(2, dto.getPwd());
ps.setString(3, dto.getName());
ps.setString(4, dto.getAddr());
ps.setString(5, dto.getTel());
ps.executeUpdate();
 response.sendRedirect("memberView.jsp");
 %>
</body>
</html>







