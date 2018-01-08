<%@page import="com.beanclass.Leave"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="/layout/CacheChecker.jsp" %> 
<%@ include file="/layout/LoginLayout.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applications</title>
</head>
<body bgcolor="wheat">
<br>
<br>
<center><h3>Leave Application Details</h3></center>
<br>
<br>
<%ArrayList<Leave> array = (ArrayList<Leave>)request.getAttribute("list"); %>
<%if(array.size()>0){ %>
<table align="center" border="1">
<tr>
<th> Application No. </th>
<th> Employee ID </th>
<th> Employee Name </th>
<th> Type of Leave </th>
<th> From Date </th>
<th> To Date </th>
<th> Total No. of Days </th>
<th> Reason </th><th> Update </th><th> Delete </th>
</tr>
<%for(Leave i : array){ %>
<tr> 
<td><%=i.getApplicationno() %></td>

<td><%=i.getEmpid() %></td>

<td><%=i.getEmpname() %></td>

<td><%=i.getLeavetype() %></td>

<td><%=i.getFromdate() %></td>

<td><%=i.getTodate() %></td>

<td><%=i.getNoofdays() %></td>

<td><%=i.getReason() %></td>
<td><a href="<%=request.getContextPath() %>/LeaveController?action=updateapp&appno=<%=i.getApplicationno() %>&id=<%=i.getEmpid()%>"> Update</a></td>
<td><a href="<%=request.getContextPath() %>/LeaveController?action=deleteapp&appno=<%=i.getApplicationno() %>&id=<%=i.getEmpid()%>"> Delete</a></td>

</tr>
<%} %>
</table>
<%}else{ %>
<div align="center">No Application/Employee Found</div>
<%} %>

<br>
<br>
<br>
<br>
<br>
<br>
<a href="LeaveController?action=GoBack">Go Back</a>


</body>
</html>