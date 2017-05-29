<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
	taglib ==> JSTL ==> JSP Standard Tag Library
	JSP ==> 제어문 
		for
		if ==> else(X)
		choose ==> 다중 if
		token ==> StringTokenizer
		redirect ==> sendRedirect(URL)
		=============================================
		CORE : 제어문, URL, 변수
		=============================================
		변환: 숫자(1,000), 날짜(yyyy-MM-dd)
		=============================================
			FORMAT
		=============================================
		SQL, XML, FN은 안쓴다.
		
	1) set => <c:set var="name" value="홍길동"/>
				==> 자바변경시 
					request.setAttribute("name", "홍길동") <%= %>로는 출력하지 못하고 ${}로 출력가능
					
--%>
<%
	String name="홍길동1";
	request.setAttribute("name2", "심청이");
%>
<%-- <c:set var="name" value="홍길동2" /> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %><br>
	${name}<br>
	${name2}
	
</body>
</html>