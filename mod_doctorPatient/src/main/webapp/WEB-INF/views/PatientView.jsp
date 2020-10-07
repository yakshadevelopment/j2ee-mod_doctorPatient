<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.html" %>
  <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patients Listing</title>
</head>
<body link="blue" vlink="blue" alink="maroon">
<div align="center" style="color:blue">
<h2 style="color:orange"><u>List of Patients Visiting ${doctorName}</u></h2> 
<h3>
<c:set var="count" value="0" scope="page"/>
<table border="2" style="border-color:lightgreen">
<tr>
<th>No</th>
<th>Patient Name</th>
<th>Address</th>
<th>Contact</th>
<th>Gender</th>
<th>Issue</th>
</tr>
<c:forEach  items="${patientList}" var="patient">
<tr>
<c:set var="str" value="${fn:split(patient,',')}"/>
<c:set var="count" value="${count + 1}" scope="page"/>
<td>${count}</td>
<c:forEach var="i" begin="0" end="4">
<td>${str[i]}</td>
</c:forEach>
</tr>
</c:forEach>
</table>
<hr color="yellow" size="5"/>
<a href="/mod_doctorPatient/PatientServlet?val=2&doc=Dr.Gilbert">Dr.Gilbert</a>
&nbsp;&nbsp;&nbsp;
<a href="/mod_doctorPatient/PatientServlet?val=2&doc=Dr.Burton">Dr.Burton</a>
&nbsp;&nbsp;&nbsp;
<a href="/mod_doctorPatient/PatientServlet?val=2&doc=Dr.Lousie">Dr.Lousie</a>
&nbsp;&nbsp;&nbsp;
<a href="/mod_doctorPatient/PatientServlet?val=2&doc=Dr.Forster">Dr.Forster</a>
&nbsp;&nbsp;&nbsp;
<a href="/mod_doctorPatient/PatientServlet?val=2&doc=Dr.Cathy">Dr.Cathy</a>
&nbsp;&nbsp;&nbsp;
<a href="index.jsp">Return</a>
</body>
</html>