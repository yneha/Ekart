<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Supplier</title>
</head>
<body>

	<h2>ADD Supplier</h2>

	<form:form action="../addSupplier" method="post">
		<table>
			<tr>
				<td>Supplier ID:</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Supplier Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Supplier Address:</td>
				<td><input type="text" name="address"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add">
				<td><input type="reset" value="Reset">
			</tr>
			
		</table>

	</form:form>

</body>
</html>