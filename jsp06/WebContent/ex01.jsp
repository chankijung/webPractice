<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	ex01.jsp<br>
	<%
	pageContext.setAttribute("name", "page");
	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	
	
	%>
	request : <%= request.getAttribute("name") %><br>
	request : ${ requestScope.name }<br>
	request : ${name }<br>  <!--  일반적으로 이거 씀
								현재페이지에서 범위가 작은거 우선			 -->
	session : ${sessionScope.name }<br> <!--  구분 지을 때는 이걸 씀 -->
	<a href="resultParam.jsp">이동</a>
	
	<hr>
	
	<form action="resultParam.jsp">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" name="전송"><br>
	</form>
		 
		
		<hr>
		
	${"aaaa" }<br> <!-- 이방법을 주로 씀 -->
	<%= "aaa" %><br> <!--  시험볼 때는 이것들로 씀 -->
	<% out.print("aaa"); %>

</body>
</html>