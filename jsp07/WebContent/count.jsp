<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="jsp07.TestDAO"/>
${dao.count(param.num)}
<% response.sendRedirect("list.jsp"); %>
</body>
</html>