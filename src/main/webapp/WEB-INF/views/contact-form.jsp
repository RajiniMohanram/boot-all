<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Shopping App</title>
	<link rel="stylesheet" href="css/add-contact.css" />
</head>
<body>
	<div>
		<h3>Add New Contact</h3>
		<f:form action="add-contact" method="post" modelAttribute="cont">
			<div>
				<f:label path="contactId">Enter the contact id: </f:label>
				<f:input path="contactId" />
				<f:label path="phone">Phone Number: </f:label>
				<f:input path="phone" />
			</div>
			<div>
				<f:label path="addressLine1">Door No./Street/Building: </f:label>
				<f:input path="addressLine1" />
				<f:label path="addressLine2">Area/Landmark: </f:label>
				<f:input path="addressLine2" />
			</div>
			<div>
				<f:label path="city">City:</f:label>
				<f:input path="city" />
				<f:label path="postalCode">Postal Code: </f:label>
				<f:input path="postalCode" />
			</div>
			<div>
				<f:label path="state">State/Region: </f:label>
				<f:input path="state" />
				<f:label path="country">Country: </f:label>
				<f:input path="country" />
			</div>
			<div class="flex-cont">
				<input type="submit" value="Add Contact" />
			</div>
		</f:form>
		<div>
			<a href="${contextPath}/shop">Home</a>
		</div>
	</div>
</body>
</html>