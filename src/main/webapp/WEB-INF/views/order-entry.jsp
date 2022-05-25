<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Shopping App</title>
	<link rel="stylesheet" href="css/order-entry.css" />
</head>
<body>
	<div>
		<h3>Place Your Order</h3>
		<f:form action="add-order" method="post" modelAttribute="order">
			<div>
				<f:label path="orderNumber">Your Order Number:</f:label>
				<f:input path="orderNumber"/>
			</div>
			<div>
				<f:label path="orderDate">Order Date:</f:label>
				<f:input path="orderDate" type="date" readonly="true"/>
			</div>
			<div>
				<f:label path="requiredDate">Required Date:</f:label>
				<f:input path="requiredDate" type="date"/>
			</div>
			<div>
				<f:label path="shippedDate">Expected Shipping Date:</f:label>
				<f:input path="shippedDate" type="date"/>
			</div>
			<div>
				<f:label path="status">Order Status:</f:label>
				<f:select path="status">
					<f:option value="Pending">Pending</f:option>
					<f:option value="Shipped">Shipped</f:option>
					<f:option value="Delivered">Delivered</f:option>
				</f:select>
			</div>
			<div>
				<f:label path="comments">Comments:</f:label>
				<f:input path="comments"/>
			</div>
			<div>
				<f:label path="customerId">Customer Id: </f:label>
				<f:input path="customerId" readonly="true"/>
			</div>
			<div>
				<input type="submit" value="Place Order" />
			</div>
		</f:form>
	</div>
</body>
</html>