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
		request.setCharacterEncoding("UTF-8");
		String n = request.getParameter("name");
		String s = request.getParameter("txt");
		String d = request.getParameter("age");
		String[] f = request.getParameterValues("hobby");
		
		
	
	
	%>
	<h2>설문조사 결과</h2>
	이름 :<%=n %><br>
	소개 :<%=s %><br>
	나이 :<%=d %><br>
	취미 :<%if(f.length !=0){
			for(String val : f){
			out.print(val+" ");
		}
		} %>
</body>
</html>