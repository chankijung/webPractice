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
		Integer visitCount = null;
		visitCount=(Integer)application.getAttribute("visitCount");
		if(visitCount==null){
			visitCount=0;}
			visitCount ++;
			application.setAttribute("visitCount", visitCount);
		
	
	%>
	<table border="1" align="center">
		<tr><td>제목</td> <td>조회수</td>
		</tr>
		<tr><td><a href="board.jsp">안녕하세요</a></td> <td><%=visitCount%></td>
		</tr>
	</table>
</body>
</html>