<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="jsp07.TestDAO"/>
<c:set var="listDTO" value="${dao.list(1,3)}"/>
<c:set var="totalPage" value="${dao.getTotalPage() }"/>

<table border="1">
	<tr>
		<th>번호</th><th>제목</th>
		<th>등록날짜</th><th>조회수</th>
	</tr>
	<c:choose>
		<c:when test="${listDTO.size() != 0 }">
			<c:forEach var="li" items="${listDTO }">
				<tr>
					<td>${li.num }</td>
					<td><a href="count.jsp?num=${li.num}">${li.title }</td>
					<td>${li.pdate }</td><td>${li.count }</td>
				</tr>	
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<th colspan="4">데이터가 존재하지 않습니다</th>
			</tr>
		</c:otherwise>
	</c:choose>
	<tr>
		<th colspan="4">
		<c:choose >
			<c:when test="${param.start == null }">
				<c:set var ="start" value="1"/>
			</c:when>
			<c:otherwise>
				<c:set var ="start" value="${param.start }"/>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${start > 1 }">
				<button type="button" 
				onclick="location.href='list.jsp?start=${start-1}'">이전</button>
			</c:when>	
			<c:otherwise>
				<button type="button" disabled>이전</button>
			</c:otherwise>
		</c:choose>
		<c:forEach begin="1" end="${totalPage }" step="1" var="cnt">
			<a href="list.jsp?start=${cnt }">[${cnt}]</a>
		</c:forEach>
		
		
		<c:choose>
			<c:when test="${start < totalPage }">
				<button type="button" 
				onclick="location.href='list.jsp?start=${start+1}'">다음</button>
			</c:when>	
			<c:otherwise>
				<button type="button" disabled>다음</button>
			</c:otherwise>
		</c:choose>
		
		
			${totalPage } <!-- 나누기, 곱하기 등등 연산은 자바코드에서 해서 넘기는게 맞다 -->
			<button type="button" 
			onclick="location.href='regForm.jsp'">등록</button>
		</th>
	</tr>
</table>

</body>
</html>