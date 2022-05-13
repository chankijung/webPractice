<%@page import="jsp06.TestDTO"%>
<%@page import="jsp06.TestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
											prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="jsp06.TestDAO"/>
	<c:set var="dto" value="${dao.getUser() }"/>
	dto: ${dto }<br>
	${dto.getName() }, ${dto.getAddr() }<br>
	${dto.name }, ${dto.addr }<br>
	<%
		TestDTO d = dao.getUser();
	%>
		<%= d.getName() %>, <%= d.getAddr() %>
		
	<hr>
	<c:set var="list" value="${dao.list() }"/>
	${list[0].name },${list[0].addr }<br>
	
	<table border='1'>
	<tr><th>이름</th><th>주소</th></tr>
	<c:forEach var="m" items="${list }">
	<tr>
		<td>${m.name }</td> <td>${m.addr }</td>
	</tr>
	</c:forEach>
	</table>	
	<c:import url="ex02.jsp"/>
	<jsp:include page="ex02.jsp"/> <!-- 따로 번역 후에 합침(그래서 변수 새로 못씀) -->
	<%@ include file="ex02.jsp" %> <!-- 합친 후에 번역 -->
	
	
	<c:set var="se" value="세션이다" scope="session"/>
	<a href="ex02.jsp">이동</a>
	<c:remove var="se" scope="session"/> <!-- 세션 삭제 -->
	
	
	<c:set var="n" value="홍길동"/>
	
	<c:choose>
		<c:when test="${n eq '홍길동' }">홍길동이다</c:when>
		<c:when test="${n == '홍길동2' }">홍길동2이~~다</c:when>
		<c:otherwise>
		엘스이다~
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>







