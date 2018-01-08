package com.beanclass;

public class Leave {
	private int applicationno;
	private int empid;
	private String empname;
	private String Leavetype;
	private String fromdate;
	private String todate;

	private int noofdays;
	public int getApplicationno() {
		return applicationno;
	}
	public void setApplicationno(int applicationno) {
		this.applicationno = applicationno;
	}
	private String reason;
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getLeavetype() {
		return Leavetype;
	}
	public void setLeavetype(String leavetype) {
		Leavetype = leavetype;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public int getNoofdays() {
		return noofdays;
	}
	public void setNoofdays(int noofdays) {
		this.noofdays = noofdays;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	public Leave(int applicationno, int empid, String empname,
			String leavetype, String fromdate, String todate, int noofdays,
			String reason) {
		super();
		this.applicationno = applicationno;
		this.empid = empid;
		this.empname = empname;
		Leavetype = leavetype;
		this.fromdate = fromdate;
		this.todate = todate;
		this.noofdays = noofdays;
		this.reason = reason;
	}
	@Override
	public String toString() {
		return "Leave [empid=" + empid + ", empname=" + empname
				+ ", Leavetype=" + Leavetype + ", fromdate=" + fromdate
				+ ", todate=" + todate + ", noofdays=" + noofdays + ", reason="
				+ reason + "]";
	}
	
}
