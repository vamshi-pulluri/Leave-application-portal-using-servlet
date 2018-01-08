package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Service.Service;
import com.beanclass.Leave;

/**
 * Servlet implementation class LeaveController
 */
public class LeaveController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LeaveController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doservice(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doservice(request, response);
	}

	private void doservice(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession(false);
		String Status = null;
		String message = null;

		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");// HTTP
																					// 1.1
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0
		response.setDateHeader("Expires", 0); // prevents caching at the proxy
												// server

		if (session == null || session.getAttribute("login") == null) {
			response.sendRedirect(request.getContextPath() + "/jsp/login.jsp");
			return;
		}

		if (action == null || action.trim().equals("")) {

			response.sendRedirect(request.getContextPath()
					+ "/jsp/EmployeeHome.jsp");
			return;
		} else if (action.equalsIgnoreCase("logout")) {
			session.invalidate();
			response.sendRedirect(request.getContextPath() + "/jsp/login.jsp");
			return;
		}

		else if (action.equals("apply")) {
			System.out.println("hello all entered here");
			RequestDispatcher r = request
					.getRequestDispatcher("/jsp/AddForm.jsp");
			r.forward(request, response);

		} else if (action.equals("view")) {
			response.sendRedirect(request.getContextPath()
					+ "/jsp/viewform.jsp");
		} else if (action.equals("Search")) {System.out.println("1234");
			int id = Integer.parseInt(request.getParameter("id"));
			Service s = new Service();
			ArrayList<Leave> result = s.getLeaveofEmployee(id);
			RequestDispatcher r = request.getRequestDispatcher("/jsp/ListofApp.jsp");
			request.setAttribute("list", result);
			r.forward(request, response);
		} else if (action.equals("deleteapp")) {
			Integer appno = Integer.parseInt(request.getParameter("appno"));
			Service s = new Service();
			Integer done = s.deleteapp(appno);
			if (done > 0) {
				Status = "done";
				message = "deleted";
			}
			RequestDispatcher r = request.getRequestDispatcher("/jsp/Done.jsp");
			request.setAttribute("status", Status);
			request.setAttribute("message", message);
			request.setAttribute("appno", appno.toString());
			r.forward(request, response);

		} else if (action.equals("updateapp")) {
			Integer appno = Integer.parseInt(request.getParameter("appno"));
			Integer id = Integer.parseInt(request.getParameter("id"));
			Service s = new Service();
			ArrayList<Leave> array = s.getLeaveofEmployeewithappno(id, appno);

			RequestDispatcher r = request.getRequestDispatcher("/jsp/updateform.jsp");
			request.setAttribute("array", array);
			r.forward(request, response);

		} else if (action.equals("Update Details")) {
			Integer appno = Integer.parseInt(request.getParameter("appno"));
			int empno = Integer.parseInt(request.getParameter("empno"));
			String empname = request.getParameter("empname");
			String type = request.getParameter("leavetype");
			String fromdate = request.getParameter("from");
			String todate = request.getParameter("to");
			int noofdays = Integer.parseInt(request.getParameter("noofdays"));
			String reason = request.getParameter("reason");

			Leave l = new Leave(appno, empno, empname, type, fromdate, todate,
					noofdays, reason);
			System.out.println(l.toString());
			Service s = new Service();
			Integer result = s.updateLeave(l);
			if (result > 0) {
				Status = "done";
				message = "updated";
			}

			RequestDispatcher r = request.getRequestDispatcher("/jsp/Done.jsp");
			request.setAttribute("status", Status);
			request.setAttribute("message", message);
			request.setAttribute("appno", appno.toString());
			r.forward(request, response);
		} else if (action.equals("Apply")) {

			int empno = Integer.parseInt(request.getParameter("empno"));
			String empname = request.getParameter("empname");
			String type = request.getParameter("leavetype");
			String fromdate = request.getParameter("from");
			String todate = request.getParameter("to");
			int noofdays = Integer.parseInt(request.getParameter("noofdays"));
			String reason = request.getParameter("reason");

			Leave l = new Leave(0, empno, empname, type, fromdate, todate,
					noofdays, reason);
			System.out.println(l.toString());
			Service s = new Service();
			Integer result = s.addLeaveApplication(l);
			if (result > 0) {
				Status = "done";
				message = "added";
			}

			RequestDispatcher r = request.getRequestDispatcher("/jsp/Done.jsp");
			request.setAttribute("status", Status);
			request.setAttribute("message", message);
			request.setAttribute("appno", result.toString());
			r.forward(request, response);
		} else if (action.equals("GoBack")) {
			response.sendRedirect(request.getContextPath()+"/jsp/EmployeeHome.jsp");
		}
	}

}
