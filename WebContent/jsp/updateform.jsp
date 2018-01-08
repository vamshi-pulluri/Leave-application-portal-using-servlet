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
<title>Leave Update Application</title>
<style type="text/css">
.error{
color: red;
font-size: 12px;
}</style>
<% ArrayList<Leave> array = (ArrayList<Leave>)request.getAttribute("array"); %>
<script type="text/javascript" src="JS/Javascript.js"></script>
</head>
<body bgcolor="wheat">
<br>
<%if(array.size()>0){ %>
<%Leave l = array.get(0);%>
<div align="center"><h3>Update the Application</h3></div>

<form name="empform" onsubmit="return validate(this.from)" action="LeaveController">

<table align="center" width=700 height="250" style="border: 3px solid black;">
<tr>
<td>
<table align="center" cellpadding="10" cellspacing="5" >
<tr>
<td> Application No. :</td>
<td width="70%"> <input type="text" name="appno" value="<%=l.getApplicationno() %>" readonly="readonly" onkeyup="empno_valid()"><span class="error" id="empno_error"></span> 
</td>
</tr>
<tr>
<td> Employee No. :</td>
<td width="70%"> <input type="text" name="empno" value="<%=l.getEmpid()%>" readonly="readonly" onkeyup="empno_valid()"><span class="error" id="empno_error"></span> 
</td>
</tr>
<tr>
<td> Employee Name : </td>
<td width="70%"> <input type="text" name="empname" onkeyup="empname_valid()"  value="<%=l.getEmpname() %>" readonly="readonly"> <span class="error" id="empname_error"></span> 
</td>
</tr>
<tr>
<td>Type of Leave:</td>
<td><select name="leavetype">
<%if(l.getLeavetype().equalsIgnoreCase("Casual Leave")){ %>
<option value="<%= l.getLeavetype()%>" selected="selected"><%= l.getLeavetype() %></option>
<option value="Coperative Leave">Co-operative Leave</option>
<option value="Earn leave">Earn Leave</option>
<option value="Loss of Pay">Loss of Pay</option>
<%}else if(l.getLeavetype().equals("Coperative Leave")){ %>
<option value="<%= l.getLeavetype()%>" selected="selected"><%= l.getLeavetype() %></option>
<option value="Casual Leave">Casual Leave</option>
<option value="Earn leave">Earn Leave</option>
<option value="Loss of Pay">Loss of Pay</option>
<%}else if(l.getLeavetype().equals("Earn Leave")){ %>
<option value="<%= l.getLeavetype()%>" selected="selected"><%= l.getLeavetype() %></option>
<option value="Coperative Leave">Co-operative Leave</option>
<option value="Casual leave">Casual Leave</option>
<option value="Loss of Pay">Loss of Pay</option>
<%}else if(l.getLeavetype().equals("Loss of Pay")){ %>
<option value="<%= l.getLeavetype()%>" selected="selected"><%= l.getLeavetype() %></option>
<option value="Coperative Leave">Co-operative Leave</option>
<option value="Earn leave">Earn Leave</option>
<option value="Casual Leave">Casual Leave</option>
<%} %>
</select></td>
</tr>
<tr>
<td> From Date : </td>
<td width="70%"> <input type="text" name="from" onkeyup="empfrom_valid()" value="<%=l.getFromdate()%>"> <span class="error" id="empfrom_error"></span> 
</td>
</tr>
<tr>
<td> To Date : </td>
<td width="70%"> <input type="text" name="to" onkeyup="empto_valid()" value="<%=l.getTodate()%>"> <span class="error" id="empto_error"></span> 
</td>
</tr>
<tr>
<td> No. of Days </td>
<td width="70%"> <input type="text" name="noofdays" onkeyup="calculate_dates()" value="<%=l.getNoofdays()%>"> <span class="error" id="empto_error"></span> 
</td>
</tr>
<tr>
<td> Existing Reason </td>
<td width="70%"> <input type="text" name="EXsists" readonly="readonly" value="<%=l.getReason()%>"> <span class="error" id="empto_error"></span> 
</td>
</tr><tr>
<td> Reason </td>
<td width="70%"> <textarea name="reason" onkeyup="reason_valid()"  rows="" cols="" ></textarea>   <span class="error" id="reason_error"></span> 
</td>
</tr>



</table>
<center> <input type="submit" name="action" value="Update Details"></center>
</td>
</tr>
</table>

</form>
<%}else{ %>
<h1 align="center">Not Found</h1>
<%} %>

<br>
<br>
<a href="LeaveController?action=GoBack">Go Back</a>

</body>
</html>