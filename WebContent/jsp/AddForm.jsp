<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="/layout/CacheChecker.jsp" %> 
<%@ include file="/layout/LoginLayout.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Application</title>
<style type="text/css">
.error{
color: red;
font-size: 12px;
}</style>
<script type="text/javascript" src="JS/Javascript.js"></script>
</head>
<body bgcolor="wheat">

<div align="center">Fill the Application</div>

<form name="empform" onsubmit="return validate(this.from)" action="<%= request.getContextPath()%>/LeaveController">

<table align="center" width=700 height="250" style="border: 1px solid black;">
<tr>
<td>
<table align="center" cellpadding="10" cellspacing="5" >
<tr>
<td> Employee No. :</td>
<td width="70%"> <input type="text" name="empno" onkeyup="empno_valid()"><span class="error" id="empno_error"></span> 
</td>
</tr>
<tr>
<td> Employee Name : </td>
<td width="70%"> <input type="text" name="empname" onkeyup="empname_valid()"> <span class="error" id="empname_error"></span> 
</td>
</tr>
<td> Select the Type of Leave: </td>
<td width="70%"> <select name="leavetype">
<option value="Casual Leave"> Casual Leave </option>
<option value="Coperative Leave"> Co-operative Leave</option>
<option value="Earn Leave"> Earn Leave </option>
<option value="Loss of Pay"> Loss of Pay </option>

</select>
</td>
</tr>
<tr>
<td> From Date : </td>
<td width="70%"> <input type="text" name="from" onkeyup="empfrom_valid()"> <span class="error" id="empfrom_error"></span> 
</td>
</tr>
<tr>
<td> To Date : </td>
<td width="70%"> <input type="text" name="to" onkeyup="empto_valid()"> <span class="error" id="empto_error"></span> 
</td>
</tr>
<tr>
<td> No. of Days </td>
<td width="70%"> <input type="text" name="noofdays" onkeyup="calculate_dates()" > <span class="error" id="empto_error"></span> 
</td>
</tr><tr>
<td> Reason </td>
<td width="70%"> <textarea name="reason" onkeyup="reason_valid()" rows="" cols=""></textarea>   <span class="error" id="reason_error"></span> 
</td>
</tr>



</table>
<center> <input type="submit" name="action" value="Apply"></center>
</td>
</tr>
</table>

</form>

<br>
<br>
<a href="<%= request.getContextPath()%>/LeaveController?action=GoBack">Go Back</a>

</body>
</html>