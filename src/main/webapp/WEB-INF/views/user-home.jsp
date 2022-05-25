<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome: ${sessionScope.user.customerName}</h1>
	<a href="all-contacts">View All Contacts</a>
	<a href="add-contact">Add New Contact</a>
	<a href="all-orders">View All Orders</a>
	<a href="add-order">Place New Order</a>
</body>
</html>