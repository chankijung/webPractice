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
	Cookie[] cookieArr= request.getCookies();
	boolean bool = true;
	for(Cookie c : cookieArr){
		out.print("name :" + c.getName()+"<br>");
		out.print("value :" + c.getValue()+"<hr>");
		//처음 요청하면 내가 설정한 쿠키는 안나옴
		//왜냐면  애드쿠키를 한 후에 다시 호출해야 그게 화면에 드러나기 때문
		if(c.getName().equals("testCookie")){
			bool= false;
		}
	}
	Cookie cookie = new Cookie("testCookie", "myCookie");
	
	cookie.setMaxAge(5);
	response.addCookie(cookie);
%>
<% if(bool){%>
<script type="text/javascript">
	window.open("popUp.jsp","","width=300, heigth=200, top =500, left=500")

</script>
<% }%>
</body>
</html>