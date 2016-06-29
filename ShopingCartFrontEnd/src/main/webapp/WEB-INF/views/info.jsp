<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = ${list};
		
	});
</script>
<%@ page isELIgnored="false"%>
<title>INFORMATION</title>
</head>
<body>
<br>
<br><br>
<br>
<br>
<br><br><br>
Detailed Information of The desired Product
<h2>${list}</h2>
<div class="container">
<table width="50%" class="table table-hover">
	<tr>
	    <th align="left">S.No</th>
		<th align="left">Id</th>
		<th align="left">AgeGroup</th>
		<th align="left">Brand</th>
		<th align="left">Material</th>
		<th align="left">Price</th>
		
	</tr>
	<c:forEach items="${list}" var="category" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${category.pdtid}</td>
			<td>${category.agegrp}</td>
			<td>${category.brand}</td>
			<td>${category.material}</td>
			<td>${category.price}</td>
			</tr>
			</c:forEach>
			</table>
			</div>
</body>
</html>