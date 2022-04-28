<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>get 전송</h1>
		form.jsp<br>
	<form action="getMethod.jsp" method="get">
		<input type="text" value="aaa" name="n"><br>
		<input type="text" name="n1"><br>
		<input type="text" name="n2"><br>
		<input type="submit" value="전송"><br>
	</form>
	<h1>post 전송</h1>
	<form action="postMethod.jsp" method="post">
		<input type="text" value="홍길동" name="n3"><br>
		<input type="text" name="n4"><br>
		<input type="text" name="n5"><br>
		<input type='text' name='a1'><br>
		<input type="submit" value="전송"><br>
	</form>

</body>
</html>