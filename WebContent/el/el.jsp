<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
	EL (표현언어 : 브라우저 출력) =대처> <%=%> 이것 대신에 사용하는것!
	1) 형식
			${표현식 exp}
				request.setAttribute{"id","admin"}
				=> <%=request.getAttribute("id")%> 기존의 이방식을 아래의 방식으로 사용가능!
				=> ${reqeustScope.id}  → id 는 key값임
				=> requestScope. => 생략이 가능! => ${id} 로 출력이 가능하다!
				
				session.setAttribute("id","admin");
				=> <%=session.getAttribute("id")%>이런 방식으로 사용하는것도
				=> ${sessionScope.id} 로 대처가능   
				
				reqeust.getParameter("id"); => model에서 처리
				=>${param.id} 
				
	2) 연산자
		a.산술 연산자
			 + ,- ,*, / ,% => 숫자
			 
			나누기(/) => 실수
			ex) 5/2 =>2가 나온다.
				${5/2} => 2.5가 나온다!
				★ (+) "aaa"+10 =결과값 => "aaa10" 이런것은 없다!
					  문자열 결합이 없다.
					"10"+"20"==> 1020 이  나온다
					${"10"+"20"} 으로 할경우 30이 나온다.
					${null+10} ==> 자바는 에러가 나지만 10이 나온다!, null값을 0으로 취급
					+, -, * ==> / (div) %(mod)
					${5%2} ==> ${5 mod 2}
					${5/2} ==> ${5 div 2}
		b.논리 연산자 ==> true/false
		 && (and)
		 || (or)
		 
		 (조건)&&(조건)
		 ================
		 true      true  ==>true
		 ================
		 true      false ==>false
		 ================
		 false    false ==>false
		 ================
		 false    true	 ==>false
		 
		  (조건)||(조건)
		 ================
		 true      true  ==>true
		 ================
		 true      false ==>true
		 ================
		 false    false ==>false
		 ================
		 false    true	 ==>true
		 
		c.비교 연산자 : true /false
		==, !=, <, >, <=, >=
		${sex=='남자'} sex.equals()
		
		=============오늘날짜
				
		d.삼항 연산자
		 조건? 값1 : 값2
		 ====
		 true 값1
		 false 값2
		 
		empty 값 ==> 빈 "" ==> true//false
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>