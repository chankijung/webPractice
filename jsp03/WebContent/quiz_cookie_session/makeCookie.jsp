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

Cookie cookie = new Cookie("makeCookie","n1Cookie");
cookie.setMaxAge(20);
response.addCookie(cookie);

%>
<script type="text/javascript">
window.close();

</script>
</body>
</html>