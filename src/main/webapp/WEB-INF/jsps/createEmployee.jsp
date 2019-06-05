<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../../index.html" %> 
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="../../css/style.css" >
	<title>Create Employee</title>
</head>
<body>
	<h2 class="header"> Create Employee:</h2>

	<div class="row">
	<div class="col-sm-8">
	<form method="post" action="save">

		<div class="form-group">
			<label for="empFirstName"><b>First Name:</b></label><input align="center" required type="text" class="form-control" name="empFirstName"
				placeholder="Enter First Name of an employee" title="First-Name">
		</div>
		
		<div class="form-group">
			<label for="empLastName">Last Name: </label><input type="text" required class="form-control" name="empLastName"
				placeholder="Enter Last Name of an employee" title="Last-Name">
		</div>
		
		<div class="form-group">
			<label for="empType">Employee Type: </label><input type="text" required class="form-control" name="empType"
				placeholder="Enter type of employment" title="Emp-Type">
		</div>
		
		<div class="form-group">
			<label for="empEmail">E-mail: </label><input type="email" required class="form-control" name="empEmail"
				placeholder="Enter Email-Id of an employee" title="Email-ID">
		</div>
		
		<div class="form-group">
			<label for="empPhone">Phone: </label><input type="tel" class="form-control" name="empPhone"
				pattern="[0-9]{10}" placeholder="Enter 10-digit phone number" title="10-digit-number">
		</div>
	
		<button type="submit" class="btn btn-primary" value="save">Save</button>
		
	</form>
	</div>
</div>
${msg}
</body>
</html>

