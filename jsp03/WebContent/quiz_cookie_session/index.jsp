<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> index.jsp<br>
<%
	Cookie[] cookieArr = request.getCookies();
	boolean bool = true;
	if(cookieArr != null){
		for(Cookie c : cookieArr){
			if(c.getName().equals("makeCookie")){
				bool=false;
			}
		}
	}

%>
<%if(bool){ %>
<script type="text/javascript">
	window.open("popup.jsp","","width=50, heigt=100")
	
</script>
<%} %>
</body>
</html>