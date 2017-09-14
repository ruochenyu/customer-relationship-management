<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Customer Save</title>
	
	<link type="text/css" rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/style.css" />
	<link type="text/css" rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
	<style>
		.error {color:red}
	</style>
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>	
	</div>
	
	<div id="container">
		<h3>Save Customer</h3>
			<i>Fill out the form. Asterisk (*) means required.</i>
			
			<form:form action="saveCustomer" modelAttribute="customer" method="POST">
				
				<form:hidden path="id"/>
			
				<table>
					<tr>
						<td><label>First Name: </label></td>
						<td><form:input path="firstName"/></td>
					</tr>
					
					<tr>
						<td><label>Last Name (*): </label></td>
						<td><form:input path="lastName"/></td>
						<td><form:errors path="lastName" cssClass="error" /><td>
					</tr>
					
					<tr>
						<td><label>email (*): </label></td>
						<td><form:input path="email"/></td>
						<td><form:errors path="email" cssClass="error" /></td>
					</tr>
					
					<br><br>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="Save"/></td>
					</tr>
				
				</table>
				
				<a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
			
			</form:form>
	</div>
	
</body>

</html>