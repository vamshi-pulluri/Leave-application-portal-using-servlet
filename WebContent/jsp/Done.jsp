<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="/layout/CacheChecker.jsp" %> 
<%@ include file="/layout/HeaderMenu.jsp" %>
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
<%String status = (String)request.getAttribute("status"); %>
<%String Message = (String)request.getAttribute("message"); %>
<%int id = Integer.parseInt((String)request.getAttribute("appno")); %>
<hr>
<br>
<br>
<br>
<br>
<hr>
<br>
<br>
<br>
<%if(Message.equals("added")){ %>
<%if(status.equalsIgnoreCase("done")){%>
<div align="center"><h3>Leave Application added and Application No. is <%=id%></h3></div>
<%}else{ %>
<div align="center"><h3>Leave Not Submitted</h3></div>
<%} %>
<%} %>
<%if(Message.equals("deleted")){ %>
<%if(status.equalsIgnoreCase("done")){%>
<div align="center"><h3>Leave Application No. <%=id%> is deleted</h3></div>
<%}else{ %>
<div align="center"><h3>Application Not Deleted</h3></div>
<%} %>
<%} %>
<%if(Message.equals("updated")){ %>
<%if(status.equalsIgnoreCase("done")){%>
<div align="center"><h3>Leave Application No. <%=id%> is Updated</h3></div>
<%}else{ %>
<div align="center"><h3>Application Not Updated</h3></div>
<%} %>
<%} %>
<br>
<br>
<a href="LeaveController?action=GoBack">Go Back</a>
</body>
</html>