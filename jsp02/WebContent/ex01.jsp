<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	contextPath : 
	<hr>

	
	<h1>설문조사 폼 만들기</h1>
	
	<form action="<%=request.getContextPath() %>/ex01_1.jsp" method='post'>
	이름: <input type='text' name='name'><br>
	소개: <textarea rows="5" cols="10" name="txt"></textarea><br>
	<fieldset>
	<legend>연령 조사</legend>
	<input type='radio' name='age' value='10'>10대
	<input type='radio' name='age' value='20'>20대
	<input type='radio' name='age' value='30'>30대
	<input type='radio' name='age' value='40'>40대<br>
	</fieldset>
	<fieldset>
	<legend>취미 조사</legend>
	<input type="checkbox" name='hobby' value='책읽기'>책읽기
	<input type="checkbox" name='hobby' value='춤추기'>춤추기
	<input type="checkbox" name='hobby' value='수영하기'>수영하기
	<input type="checkbox" name='hobby' value='피아노치기'>피아노치기
	<input type="checkbox" name='hobby' value='걷기'>걷기
	<input type="checkbox" name='hobby' value='노래하기'>노래하기<br>
	</fieldset>
	<input type='submit' value='전송'>
	</form>
</body>
</html>