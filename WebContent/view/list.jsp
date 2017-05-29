<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>사원목록</h3>
		<%--
			<%= request.getAttribute("msg")%>
		 --%>
		 <table border=1 width=350>
		 	<tr>
		 		<td>비고</td>
		 		<td>사번</td>
		 		<td>이름</td>
		 		<td>직위</td>
		 	</tr>
		 	<!-- 
		 		for(EmpVO vo:list){
		 			System.out.println(vo.getEmpno());
		 			System.out.println(vo.getEname());
		 			System.out.println(vo.getJob());
		 		}
		 	
		 	 -->
		 	<c:forEach var="vo" items="${list}" varStatus="s"><!-- varStatus는 index를 가지고 온다. -->
		 		<tr>
		 		<%--
		 			index
		 			<%=request.getAttribute("list").get(0).getEmpno() %>
		 		 --%>		 		 
		 		 	<td>${s.index}</td>
		 			<td>${vo.empno}</td><!--변수명을 호출하는 것이 아니라 .empno는 getEmpno()를 호출하는 것이다. getter가 없으면 오류난다. -->
		 			<td>${vo.ename}</td><!--  mybatis에서도 #괄호사이는 는 getter호출하는 것이다. -->
		 			<td>${vo.job}</td>
		 		</tr>		 		
		 	</c:forEach>
		 <%--</table>
		 사번:${empVO.empno}<br>
		 이름:${empVO.ename}<br>
		 직위:${empVO.job}--%>
	</center>
</body>
</html>