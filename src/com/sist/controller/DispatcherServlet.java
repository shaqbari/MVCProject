package com.sist.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.model.Model;

/**
 * @author user
 *	ListModel <==> list.jsp
 *	UpdateModel <==> update.jsp
 *	DeleteModel <==> delete.jsp
 *	InsertModel <==> insert.jsp
 */
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// http://localhost:8080/MVCProject/DispatcherServlet?cmd=list
	// /list.do
	private String[] strCmd={"list", "insert", "update", "delete" };
	//model mappig
	private String[] strCls={
			"com.sist.model.ListModel"
			, "com.sist.model.InsertModel"
			, "com.sist.model.UpdateModel"
			, "com.sist.model.DeleteModel"
	};
	//<beam id="list" class="" jsp=""/>
	//jsp mapping
	private String[] strJsp={
		"list.jsp"
		, "insert.jsp"
		, "update.jsp"
		, "delete.jsp"
		
	};
		
	//메모리 절약위해 singleton cf)요청할때마다 다르게 생성할때는 prototype, clone이용
	//factory패턴: 여러 클래스를 interface로 묶고 필요한것만 올린다.
	
	//저장
	private Map clsMap=new HashMap();
	private Map jspMap=new HashMap();
	
	public void init(ServletConfig config) throws ServletException {
		
			try {
				for (int i = 0; i < strCmd.length; i++) {
					Class clsName=Class.forName(strCls[i]);//reflection 메모리 할당
					Object obj=clsName.newInstance();
					clsMap.put(strCmd[i], obj);
					jspMap.put(strCmd[i], strJsp[i]);
				}
			} catch (Exception e) {
				System.out.println("DispatcherServlet 클래스 올릴때 "+e.getMessage());
			}
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			//사용자 요청 받기
			String cmd=request.getParameter("cmd");
			//클래스찾기==>annotation(클래스 검색하는 구분자로만 기능)으로 도가능하다.
			Model model=(Model)clsMap.get(cmd);
			//기능 처리 ==> 결과값을 DispathcerServervlet으로 전송
			model.execute(request, response);
			
			//request를 jsp로 전송
			String jsp=(String) jspMap.get(cmd);
			//forward
			RequestDispatcher rd=request.getRequestDispatcher("view/"+jsp);
			rd.forward(request, response);
			
		} catch (Exception e) {
			System.out.println("DispatcherServlet 요청받고 전송시 "+ e.getMessage());
		}
	}

}
