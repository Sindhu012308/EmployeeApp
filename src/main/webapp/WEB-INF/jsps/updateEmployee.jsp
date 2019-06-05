<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Miracle Employees</title>
	<%@ include file="../../index.html" %> 
	<link rel="stylesheet" href="../../css/style.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<h2 class="header">Update Employee# : ${empl.empId}</h2>
	<div class="row">
	  <div class="col-sm-8">
		<form method="post" action="updateEmployee">
	
			<div class="form-group">
				<label for="empId"><b>Employee Id:</b></label><input align="center" type="text" class="form-control" name="empId" value="${empl.empId}" readonly>
			</div>

			<div class="form-group">
				<label for="empFirstName"><b>First Name:</b></label><input align="center" required type="text" class="form-control" 
					name="empFirstName" value="${empl.empFirstName}">
			</div>
		
			<div class="form-group">
				<label for="empLastName">Last Name: </label><input type="text" required class="form-control" value="${empl.empLastName}" name="empLastName">
			</div>
		
			<div class="form-group">
				<label for="empType">Employee Type: </label><input type="text" required class="form-control" value="${empl.empType}" name="empType">
			</div>
		
			<div class="form-group">
				<label for="empEmail">E-mail: </label><input type="email" required class="form-control" value="${empl.empEmail}" name="empEmail">
			</div>
		
			<div class="form-group">
				<label for="empPhone">Phone: </label><input type="tel" required class="form-control" value="${empl.empPhone}" 
						name="empPhone" pattern="[0-9]{10}" placeholder="Enter 10-digit phone number" title="10-digit-number">
			</div>
	
			<button type="submit" class="btn btn-primary" value="save">Save</button>
		
		</form>
	</div>
  </div>	
</body>
</html>
