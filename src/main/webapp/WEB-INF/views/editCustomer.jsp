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
	<div align="left">
		<div class="container">
			<
			<h1>
				<b>CUSTOMER REALATIOSHIP MANAGEMENT</b>
			</h1>
			<h5>
				<b>Edit Customer</b>
			</h5>
			<form action="updateCustomer" method="post">
				<div class="form-group">
					<label for="id">Id</label> <input type="text"
						value="${customer.id}" id="id" name="id" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="firstName">First Name:</label> <input type="text"
						value="${customer.firstName }" id="firstName" name="firstName"
						placeholder="Enter firstName">
				</div>
				<div class="form-group">
					<label for="lastName">Last Name:</label> <input type="text"
						value="${customer.lastName }" id="lastName" name="lastName"
						placeholder="Enter LastName">
				</div>
				<div class="form-group">
					<label for="email">Email:</label> <input type="text"
						value="${customer.email }" id="email" name="email"
						placeholder="Enter Email">
				</div>
				<button type="submit" class="save">save</button>
				<br> <br> <a href="${pageContext.request.contextPath }/"
					style="font-size: 14px; font-weight: medium; text-decoration: underline;">Back
					to List</a>
			</form>
		</div>
	</div>
</body>
</html>