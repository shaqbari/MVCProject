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
		
	//�޸� �������� singleton cf)��û�Ҷ����� �ٸ��� �����Ҷ��� prototype, clone�̿�
	//factory����: ���� Ŭ������ interface�� ���� �ʿ��Ѱ͸� �ø���.
	
	//����
	private Map clsMap=new HashMap();
	private Map jspMap=new HashMap();
	
	public void init(ServletConfig config) throws ServletException {
		
			try {
				for (int i = 0; i < strCmd.length; i++) {
					Class clsName=Class.forName(strCls[i]);//reflection �޸� �Ҵ�
					Object obj=clsName.newInstance();
					clsMap.put(strCmd[i], obj);
					jspMap.put(strCmd[i], strJsp[i]);
				}
			} catch (Exception e) {
				System.out.println("DispatcherServlet Ŭ���� �ø��� "+e.getMessage());
			}
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			//����� ��û �ޱ�
			String cmd=request.getParameter("cmd");
			//Ŭ����ã��==>annotation(Ŭ���� �˻��ϴ� �����ڷθ� ���)���� �������ϴ�.
			Model model=(Model)clsMap.get(cmd);
			//��� ó�� ==> ������� DispathcerServervlet���� ����
			model.execute(request, response);
			
			//request�� jsp�� ����
			String jsp=(String) jspMap.get(cmd);
			//forward
			RequestDispatcher rd=request.getRequestDispatcher("view/"+jsp);
			rd.forward(request, response);
			
		} catch (Exception e) {
			System.out.println("DispatcherServlet ��û�ް� ���۽� "+ e.getMessage());
		}
	}

}
