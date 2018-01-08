<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="wheat">
<center><h2>Leave Application Portal</h2></center>
<hr>
<br>
<br>
<br>

<%
  String status = request.getParameter("status");
  if(status!=null){
%>
 <span style="color: red">Invalid Username/Password</span>
<%} %>
<form action="<%=request.getContextPath()%>/LoginControllerServlet" method="post">

<table align="center">
  <tr>
     <td>Username</td>
     <td><input type="text" name="user"/></td>
    
  </tr>
  <tr>
     <td>Password</td>
     <td><input type="password" name="pwd"/></td>
    
  </tr>

  <tr>
     <td colspan="2"><button type="submit" name="action" value="login">Login</button></td>
     <td></td>
    
  </tr>
</table>


</form>
</body>
</html>