 <%@page import="com.beanclass.Login"%>
 <%@ include file="/layout/CacheChecker.jsp" %> 
<center><h2>Leave Application Portal</h2></center>
<hr>
<div >
  <center><a href="<%= request.getContextPath()%>/LeaveController?action=apply">Register For Leave</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="<%= request.getContextPath()%>/LeaveController?action=view">View Your Leave Application</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <a href="<%= request.getContextPath()%>/LeaveController?action=logout">Logout</a></center>
  
  <%
  
   Login login = (Login) session.getAttribute("login");
  %>
  <div><span style="float: right">Welcome : <%=login.getUsername() %>, Logged in as : <%=login.getRole() %></span></div>
 </div>
<hr>