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
	<div class="container">
		<h2>Employees:</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Employee Type</th>
					<th>Email</th>
					<th>Phone</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allEmployees}" var="empl">
					<tr>
						<td>${empl.empId}</td>
						<td>${empl.empFirstName}</td>
						<td>${empl.empLastName}</td>
						<td>${empl.empType}</td>
						<td>${empl.empEmail}</td>
						<td>${empl.empPhone}</td>
						<td> <a href="/edit?id=${empl.empId}">Edit</a> </td>
						<td> <a href="/delEmployee?id=${empl.empId}">Delete</a> </td>
					<tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
