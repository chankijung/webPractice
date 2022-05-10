<%@page import="sun.font.Script"%>
<%@page import="member.MemberDTO"%>
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
	loginChk.jsp
	
	<%
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.loginChk(id);
		System.out.println("p->"+dto.getPwd());
		System.out.println("p->"+pwd);
		if(dto != null){
			if(dto.getPwd().equals(pwd)){
				//로그인 성공
				session.setAttribute("name", dto.getName());
				session.setAttribute("id", dto.getId());
				//response.sendRedirect("login.jsp");
				%>
				<script type="text/javascript">
				alert('<%=id%>님 환영합니다~~')
				location.href='login.jsp'
				</script>
			<%}else{
				
				//비밀번호 틀림
				%>
				<script type="text/javascript">
				alert('비밀번호가 틀렸습니다')
				location.href='login.jsp'
				</script>
		<% 	}
		}else{
			//해당 아이디가 존재하지 않음%>
			<script type="text/javascript">
			alert('아이디가 없습니다')
			location.href='login.jsp'
			</script>
		<%}
	
	%>
</body>
</html>