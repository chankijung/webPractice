<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<!-- 한글 처리하는 uri -->
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<fmt:requestEncoding value="utf-8"/> <!-- request.setCharacterEncoding 이랑 같음 -->
	${param.id } <br>
	${param.pwd }<br>
	<jsp:useBean id="dao" class="jsp06.TestDAO"/>
	<c:if test="${dao.loginChk(param.id, param.pwd) ==0 }">
		<script type="text/javascript">
		alert('로그인 성공!!')
		</script>
	</c:if><br>
	<c:set var="n" value='${dao.loginChk(1,2) }'/>
	n: ${n }
	<c:if test="${n==0 }">
		<b>n은 0이다</b>
	</c:if>
	<jsp:useBean id="member" class="member.MemberDAO"/>
		<c:forEach var="mem" items="${member.getList() }">
		${mem.id }, ${mem.pwd },${mem.name },${mem.addr }<br>
		
		</c:forEach>
	
</body>
</html>