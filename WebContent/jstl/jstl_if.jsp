<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	if(조건) 처리
	<c:if test="조건">
	
	==> if(조건) 처리
		else 처리
		
	==><c:if test=""> 처리
	   <c:if test="!"> 처리
	   		 ========조건
	   
	==><c:choose>
		<c:when test="조건"> 처리
		<c:otherwise>처리
	  	
		
 --%>
<c:set var="sex" value="남자"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<%-- if(sex==1) --%>
		<c:if test="${sex=='남자'}">
			남자
		</c:if>
		<c:if test="${sex!='남자'}">
			여자
		</c:if><br>
		<c:forEach var="i" begin="1" end="10">
			<c:if test="${i%2==1}">
				${i}&nbsp;
			</c:if>
		</c:forEach><br>
		<c:choose>
			<c:when test="${sex=='남자'}">1</c:when>
			<c:otherwise>2</c:otherwise>
		</c:choose><br>
		<c:forTokens var="color" items="red,green,blue" delims=",">
			${color}&nbsp;
		</c:forTokens>
		
	</center>	
</body>
</html>