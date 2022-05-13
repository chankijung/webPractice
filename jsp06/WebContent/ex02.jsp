<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="안녕하세요"/> <br>
	<!-- 거의 안씀 -->
	${"ㅁㅁㅁ" }
	<hr>
	
	<c:set var="num" value="안녕하세요111"/> <br>
	<!-- 변수 설정 -->
	${num }
	<%
		String s = "안녕";
		if(s.equals("안녕")){
	%>
		얼럿~
	<%} %>
	<hr>
	<c:if test="${num == '안녕하세요111' }">
		<script type="text/javascript">
		 alert("얼럿~")
		</script>
	</c:if>
	<hr>
	<%
	ArrayList<String> arr= new ArrayList<>();
	arr.add("aaa");
	arr.add("bbb");
	arr.add("ccc");
	
	
	%>
	<c:set var="list" value="<%= arr %>"/> <!-- arr이라는 변수를 list로 쓰겠음 -->
	<c:forEach var="a" items="${list }">
		${a }<br>
	</c:forEach>
	
	
	
	<hr>
	session : ${se }<br>
session : ${sessionScope.se }<br>
	
	
	
</body>
</html>