<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
	EL (ǥ����� : ������ ���) =��ó> <%=%> �̰� ��ſ� ����ϴ°�!
	1) ����
			${ǥ���� exp}
				request.setAttribute{"id","admin"}
				=> <%=request.getAttribute("id")%> ������ �̹���� �Ʒ��� ������� ��밡��!
				=> ${reqeustScope.id}  �� id �� key����
				=> requestScope. => ������ ����! => ${id} �� ����� �����ϴ�!
				
				session.setAttribute("id","admin");
				=> <%=session.getAttribute("id")%>�̷� ������� ����ϴ°͵�
				=> ${sessionScope.id} �� ��ó����   
				
				reqeust.getParameter("id"); => model���� ó��
				=>${param.id} 
				
	2) ������
		a.��� ������
			 + ,- ,*, / ,% => ����
			 
			������(/) => �Ǽ�
			ex) 5/2 =>2�� ���´�.
				${5/2} => 2.5�� ���´�!
				�� (+) "aaa"+10 =����� => "aaa10" �̷����� ����!
					  ���ڿ� ������ ����.
					"10"+"20"==> 1020 ��  ���´�
					${"10"+"20"} ���� �Ұ�� 30�� ���´�.
					${null+10} ==> �ڹٴ� ������ ������ 10�� ���´�!, null���� 0���� ���
					+, -, * ==> / (div) %(mod)
					${5%2} ==> ${5 mod 2}
					${5/2} ==> ${5 div 2}
		b.�� ������ ==> true/false
		 && (and)
		 || (or)
		 
		 (����)&&(����)
		 ================
		 true      true  ==>true
		 ================
		 true      false ==>false
		 ================
		 false    false ==>false
		 ================
		 false    true	 ==>false
		 
		  (����)||(����)
		 ================
		 true      true  ==>true
		 ================
		 true      false ==>true
		 ================
		 false    false ==>false
		 ================
		 false    true	 ==>true
		 
		c.�� ������ : true /false
		==, !=, <, >, <=, >=
		${sex=='����'} sex.equals()
		
		=============���ó�¥
				
		d.���� ������
		 ����? ��1 : ��2
		 ====
		 true ��1
		 false ��2
		 
		empty �� ==> �� "" ==> true//false
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