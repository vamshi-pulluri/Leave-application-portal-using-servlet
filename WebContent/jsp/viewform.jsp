<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="/layout/CacheChecker.jsp" %> 
<%@ include file="/layout/LoginLayout.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter ID</title>
</head>
<body bgcolor="wheat">
<br>
<br>
<div align="center"><form action="<%= request.getContextPath()%>/LeaveController">
Enter the Employee ID :   &nbsp; <input type="text" name="id">
<br>
<br>
<br>
<input type="submit" name="action" value="Search">


</form></div>
<br>
<br>
<br>
<br>
<br>
<br>
<a href="<%= request.getContextPath()%>/LeaveController?action=GoBack">Go Back</a>


</body>
</html>