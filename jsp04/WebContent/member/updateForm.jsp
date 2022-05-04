<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>updateForm.jsp<br><hr>
	<form action="update.jsp" method="post">
		
		수정할 비밀번호 : <input type="text" name="pwd"><br>
		수정할 이름 : <input type="text" name="name"><br>
		수정할 주소 : <input type="text" name="addr"><br>
		수정할 전화번호 : <input type="text" name="tel"><br>
		<input type="submit" value='수정'>
	</form>

</body>
</html>