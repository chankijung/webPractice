<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- 코어를 통해 if문,else, 반복문(forEach), c:set(변수설정) 정도만 씀 -->
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
	<fmt:requestEncoding value="utf-8"/><!-- 나중에 안씀 -->
	title : ${param.title }

<jsp:useBean id="dao" class="jsp07.TestDAO"/><!-- 나중에 안씀 -->
	${dao.insert(param.title) }

<c:redirect url="list.jsp"/><!-- 나중에 안씀 -->

</body>
</html>