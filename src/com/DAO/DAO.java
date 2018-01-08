package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Util.Util;
import com.beanclass.Leave;

public class DAO {
	public int addLeave(Leave l){
		Connection con = null;
		PreparedStatement ps = null;
		PreparedStatement p = null;
		int result = 0;
		
		try {
			con = Util.getConnection();
			p = con.prepareStatement("select leaveapplication_seq.nextval from dual");
			ResultSet r = p.executeQuery();
			while(r.next()){
				result =r.getInt(1);
				l.setApplicationno(result);
				ps = con.prepareStatement("insert into leaveapplication values (?,?,?,?,?,?,?,?)");
				ps.setInt(1, l.getApplicationno());
				ps.setInt(2, l.getEmpid());
				ps.setString(3, l.getEmpname());
				ps.setString(4, l.getLeavetype());
				ps.setString(5, l.getFromdate());
				ps.setString(6, l.getTodate());
				ps.setInt(7, l.getNoofdays());
				ps.setString(8, l.getReason());
				
				int done = ps.executeUpdate();
				if(done == 0){
					result = 0;
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public int updateLeave(Leave l){
		Connection con = null;
		PreparedStatement ps = null;
		PreparedStatement p = null;
		int result = 0;
		
		try {
			con = Util.getConnection();
			p = con.prepareStatement("update leaveapplication set typeofleave=?,fromdate=?,todate=?,noofdays=?,reason=? where applicationno=? ");
			p.setString(1, l.getLeavetype());
			p.setString(2, l.getFromdate());
			p.setString(3, l.getTodate());
			p.setInt(4, l.getNoofdays());
			p.setString(5, l.getReason());
			p.setInt(6, l.getApplicationno());
			result = p.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public ArrayList<Leave> GetLeaveofEmployee(int Employeeid){
		Connection con = null;
		PreparedStatement ps = null;
		PreparedStatement p = null;
		 ArrayList<Leave> result = new ArrayList<>();
		
		try {
			con = Util.getConnection();
			p = con.prepareStatement("select * from leaveapplication where EmployeeNo = ?");
			p.setInt(1, Employeeid);
			ResultSet r = p.executeQuery();
			while(r.next()){
				int applicationno = r.getInt(1); 
				 int empid = r.getInt(2);
				 String empname = r.getString(3);
				 String Leavetype = r.getString(4);
				 String fromdate = r.getString(5);
				 String todate = r.getString(6 );

				 int noofdays = r.getInt(7);
				 String reason = r.getString(8);
				 Leave l = new Leave(applicationno, empid, empname, Leavetype, fromdate, todate, noofdays, reason);
				 result.add(l);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public int deleteapp(int appno){
		Connection con = null;
		PreparedStatement ps = null;
		PreparedStatement p = null;
		int result = 0;
		
		try {
			con = Util.getConnection();
			p = con.prepareStatement("delete  from leaveapplication where applicationno = ?");
			p.setInt(1, appno);
			
			result = p.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	
	}
	public ArrayList<Leave> GetLeaveofEmployeewithappno(int Employeeid,int appno){
		Connection con = null;
		PreparedStatement ps = null;
		PreparedStatement p = null;
		 ArrayList<Leave> result = new ArrayList<>();
		
		try {
			con = Util.getConnection();
			p = con.prepareStatement("select * from leaveapplication where EmployeeNo = ? and applicationno = ?");
			p.setInt(1, Employeeid);
			p.setInt(2, appno);
			ResultSet r = p.executeQuery();
			while(r.next()){
				int applicationno = r.getInt(1); 
				 int empid = r.getInt(2);
				 String empname = r.getString(3);
				 String Leavetype = r.getString(4);
				 String fromdate = r.getString(5);
				 String todate = r.getString(6 );

				 int noofdays = r.getInt(7);
				 String reason = r.getString(8);
				 Leave l = new Leave(applicationno, empid, empname, Leavetype, fromdate, todate, noofdays, reason);
				 result.add(l);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
