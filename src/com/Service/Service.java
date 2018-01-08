package com.Service;

import java.util.ArrayList;

import com.DAO.DAO;
import com.beanclass.Leave;

public class Service {
	public int addLeaveApplication(Leave l){
		DAO d = new DAO();
		return d.addLeave(l);
	}
	public ArrayList<Leave> getLeaveofEmployee(int empid){
		DAO a = new DAO();
		return a.GetLeaveofEmployee(empid);
		
	}
	public int deleteapp(int appno){
		DAO d = new DAO();
		return d.deleteapp(appno);
	}
	public ArrayList<Leave> getLeaveofEmployeewithappno(int empid,int appno){
		DAO a = new DAO();
		return a.GetLeaveofEmployeewithappno(empid, appno);
		
	}
	public int updateLeave(Leave l){
		DAO d = new DAO();
		return d.updateLeave(l);
	}
}
