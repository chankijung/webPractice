<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	전송
	<form action="query.jsp" method="post">
		<input type="number" name="n"><br><br>
		<hr>
		<input type="radio" name="v1" value="남자">남자
		<input type="radio" name="v1" value="여자">여자
		<br>
		<input type="submit" value="쿼리 전송">
	</form>

</body>
</html>