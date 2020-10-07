<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ include file="header.html" %>
  <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Entry</title>
<script type="text/javascript">
 function doctorPick()
 {
	document.getElementById("doctorName").value=document.getElementById("doctorList").value; 
 }
 function genderPick()
 {
	document.getElementById("gender").value=document.getElementById("genderList").value; 
 }

</script>
</head>
<body>
<div align="center">
<h2 style="color:#E07B39"><u>Patient Entry</u></h2> 

<form action="PatientServlet" method="post" id="purchaseForm">
<input type="hidden" name="val" value="1"/>
<h3>
Pick Up Doctor's Name <select id="doctorList" onclick="doctorPick()">

<option value="Dr.Burton">Dr.Burton</option>
<option value="Dr.Forster">Dr.Forster</option>
<option value="Dr.Gilbert">Dr.Gilbert</option>
<option value="Dr.Cathy">Dr.Cathy</option>
<option value="Dr.Lousie">Dr.Lousie</option>   
</select>
<input type="text" id="doctorName" name="doctorName" readonly/>
</h3>
<h3>
<table>
<tr>
<td>Enter Patient name</td>
<td><input type="text" name="patientName" required/></td>
</tr>
<tr>
<td>Enter Address</td>
<td><input type="text" name="address" required/></td>
</tr><tr>
<td>Enter Contact Number</td>
<td><input type="text" name="contact" required/></td>
</tr><tr>
<td>Pick Up Gender
<select id="genderList" onclick="genderPick()">

<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Third">Third</option>
</select>
</td>
<td><input type="text" name="gender" id="gender" readonly/></td>
</tr><tr>
<td>Enter Health Issue</td>
<td><input type="text" name="health" required/></td>
</tr><tr>
<td><button type="reset">reset</button></td>
<td><button type="submit">submit</button></td>
</tr>
</table>
</h3>
</form>
</div>
</body>
</html>