<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Shopping App</title>
	<link rel="stylesheet" href="css/contact-list.css" />
</head>
<body>
	<div>
		<a href="${contextPath}/shop">Home</a>
	</div>
	<table>
		<thead>
			<tr>
				<th>Contact Id</th>
				<th>Phone Number</th>
				<th>Address</th>
				<th>Stage &amp; Country</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="contact" items="${contacts}" >
				<tr>
					<td>${contact.contactId}</td>
					<td>${contact.phone}</td>
					<td>
						<div>${contact.addressLine1}</div>
						<div>${contact.addressLine2}</div>
						<div>${contact.city}
							<c:if test="${not empty contact.postalCode}">
								 - ${contact.postalCode}
							</c:if>
						</div>
					</td>
					<td>
						<c:if test="${not empty contact.state}">
							${contact.state},
						</c:if>
						<c:if test="${not empty contact.country}">
							${contact.country}
						</c:if>
						
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>