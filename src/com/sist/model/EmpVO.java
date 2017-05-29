package com.sist.model;

/**
 * @author user
 *	구조파악 ==> 직접 구현 ==> 라이브러리 쓰기
 *	mybatis ==> mybatis간단하게 만들어봐
 */
public class EmpVO {
	private int empno;
	private String ename;
	private String job;

	public EmpVO(int empno, String ename, String job) {
		this.empno = empno;
		this.ename = ename;
		this.job = job;
	}
	
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}


}
