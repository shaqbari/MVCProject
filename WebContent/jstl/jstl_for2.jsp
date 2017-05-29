<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% List<String> list=new ArrayList<String>();
	list.add("홍길동");
	list.add("심청이");
	list.add("박문수");
	list.add("이순신");
	list.add("강감찬");
	
	request.setAttribute("list", list);
%>
<%-- <c:set var="names" value="<%=list %>"/> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>JAVA = forEach 구현</h3>
		<%for(String s : list){ %>
			<%=s %>&nbsp;
		<%}%>
		<br>
		<h3>JSTL = forEach구현</h3>
		<c:forEach var="s" items="${list}"><!--자동으로 형변환이 되어 String으로 된다. -->
			${s}&nbsp;
		</c:forEach>
	</center>
</body>
</html>