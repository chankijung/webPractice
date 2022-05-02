<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>scope1.jsp<br>
<%	//변수 설정 한 것이라고 생각
	pageContext.setAttribute("name", "page");
// page 안에서만 유지되는 변수

	request.setAttribute("name", "request");
// request는 forward를 쓰면 forward 된 페이지까진 유지 됨

	session.setAttribute("name", "session");
// 현재 브라우저가 유지되고 있는 동안은 유지됨.(가장 많이 씀)
// 로그인창에 자주 활용, 다른 브라우저에서는 유지 x

	application.setAttribute("name", "application");
// 서버가 유지되고 있는 동안 유지됨(가장 큰 범위, 사용 빈도 낮음(전역변수, static변수 쓴다면 사용))

%>
	page: <%=pageContext.getAttribute("name") %><br>
	request: <%=request.getAttribute("name") %><br>
	session: <%=session.getAttribute("name") %><br>
	application: <%=application.getAttribute("name") %><br>
	<a href="scope2.jsp">scope2로 이동</a>
	<%
	request.getRequestDispatcher("scope2.jsp").forward(request, response);
	
	%>

</body>
</html>