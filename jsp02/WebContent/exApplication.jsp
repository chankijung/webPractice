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
    if(request.getMethod().equals("POST")) {
        application.setAttribute("text", request.getParameter("text"));
    }
    %>
    <form action="exApplication.jsp" method="post">
        <input type="text" name="text"/>
        <input type="submit" value="어플리케이션에 저장"/>
    </form>
    <%
    String text = (String)application.getAttribute("text");
    if(text == null || text == "") {
    %>
        <p>현재 저장된 값 : 없음</p>
    <%
    } else {
    %>
        <p>현재 저장된 값 : <%=application.getAttribute("text") %></p>
    <%
    }
    %>
   
</body>
</html>