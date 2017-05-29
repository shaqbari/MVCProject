package com.sist.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author user
 *	ArrayList => VO => 일반변수
 */
public class ListModel implements Model {

	
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//String msg="게시판 목록";
		//req.setAttribute("msg", msg);
		
		String empno=req.getParameter("empno");
		if(empno==null){
			empno="1";			
		}
		
		List<EmpVO> list=new ArrayList<EmpVO>();
		list.add(new EmpVO(1, "홍길동", "대리"));
		list.add(new EmpVO(2, "김길수", "부장"));
		list.add(new EmpVO(3, "나난나", "사원"));
		
		//==>JSP로 전송
		req.setAttribute("list", list);
		
		EmpVO empVO=null;
		for(EmpVO v:list){
			if(empVO.getEmpno()==Integer.parseInt(empno)){
				empVO=v;
				
			}			
		}
		req.setAttribute("empVO", empVO);
	}

}
