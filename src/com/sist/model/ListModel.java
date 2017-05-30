package com.sist.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author user
 *	ArrayList => VO => �Ϲݺ���
 */
public class ListModel implements Model {

	
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//String msg="�Խ��� ���";
		//req.setAttribute("msg", msg);
		
		String empno=req.getParameter("empno");
		if(empno==null){
			empno="1";			
		}
		System.out.println("empno��"+empno);
		
		List<EmpVO> list=new ArrayList<EmpVO>();
		list.add(new EmpVO(1, "ȫ�浿", "�븮"));
		list.add(new EmpVO(2, "����", "����"));
		list.add(new EmpVO(3, "������", "���"));
		
		req.setAttribute("list", list);
		//==>JSP�� ����
		
		EmpVO empVO=null;
		for(EmpVO v:list){
			if(v.getEmpno()==Integer.parseInt(empno)){
				empVO=v;
				
			}			
		}
		System.out.println("empVO�� "+empVO);

		req.setAttribute("empVO", empVO);
	}

}
