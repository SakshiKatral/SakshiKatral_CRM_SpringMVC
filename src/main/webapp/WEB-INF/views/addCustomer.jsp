<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>NewCustomer</title>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>
<body>
	<div align="left">
		<div class="container">
			<h1>
				<b>CUSTOMER REALATIOSHIP MANAGEMENT</b>
			</h1>
			<br>
			<br>
			<br>
			<h5>
				<b>Save Customer</b>
			</h5>
			<form action="insertCustomer" method="post" modelAttribute="customer">
				<div class="form-group">
					<label for="fistName">First Name:</label> <input type="text"
						id="firstName" name="firstName" placeholder="Enter FirstName">
				</div>
				<div class="form-group">
					<label for="lastName">Last Name:</label> <input type="text"
						id="lastName" name="lastName" placeholder="Enter LastName">
				</div>
				<div class="form-group">
					<label for="email">Email:</label> <input type="text" id="email"
						name="email" placeholder="Enter Email">
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