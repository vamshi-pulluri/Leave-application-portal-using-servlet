package com.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beanclass.Login;


public class LoginControllerServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		String action= request.getParameter("action");
		
		if(session==null || session.getAttribute("login")==null){
			
			if(action.equalsIgnoreCase("login")){
				
				String username = request.getParameter("user");
				String password = request.getParameter("pwd");
				String role = "admin";
				
				if(username.equals("admin") && password.equals("admin")){
					
					Login login = new Login();
					login.setUsername(username);
					//login.setPassword(password);
					login.setRole(role);
					
					session = request.getSession(true);					
					session.setAttribute("login", login);
					
					response.sendRedirect(request.getContextPath()+"/LeaveController");
					return;
				}else{
					
					response.sendRedirect(request.getContextPath()+"/jsp/login.jsp?status=failed");
					return;
					
				}
				
			}
			
		}
		
	}


}
