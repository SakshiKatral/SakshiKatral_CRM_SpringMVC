<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container">
		<div align="center">
			<h1>
				<b>CUSTOMER RELATIONSHIP MANAGEMENT</b>
			</h1>
		</div>
		<br> <br> <a href="addCustomer" class="add-button"
			style="color: black;"> Add Customer </a>
		<div class="row">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Email</th>
						<th scope="col">Upadte</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="customer" items="${customer}">
						<tr>
							<td>${customer.firstName}</td>
							<td>${customer.lastName}</td>
							<td>${customer.email}</td>
							<td><a href="editCustomer/${customer.id}"
								class="btn btn-warning"
								style="font-size: 12px; font-weight: bold;"> Update </a></td>
							<td><a href="deleteCustomer/${customer.id}"
								class="btn btn-danger"
								style="font-size: 12px; font-weight: bold;"
								onclick="return confirm('Are you sure ou want to delete this customer?');">
									Delete </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>