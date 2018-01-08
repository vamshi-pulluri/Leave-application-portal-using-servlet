<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Faculty</title>
</head>
<body>
<hr>
<br>
<br>
<div align="center"> <h2>Leave Application Management System </h2> </div>
<br>
<br>
<hr>
<br>
<br>
<br>
<br>
<div ><span style=" padding-left:500px; padding-right: 150px;"><a href="<%=request.getContextPath()%>/LeaveController?action=apply">Apply Leave</a>
</span><a href="<%=request.getContextPath()%>/LeaveController?action=view">View Leave Application</a> </div>
</body>
</html>