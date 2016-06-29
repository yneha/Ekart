<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<div class="container">
<br><br><br>
<h3><center>Detailed Information of The desired Product</center></h3>
<br>
<table class="table table-hover">
<thead>
<tr><th align="left">Id</th>
		<th align="left">Age Group</th>
		<th align="left">Brand</th>
		<th align="left">Material</th>
		<th align="left">Price(Rs.)</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td>${list.pdtid}</td>
			<td>${list.agegrp}</td>
			<td>${list.brand}</td>
			<td>${list.material}</td>
			<td>${list.price}</td>
			</tr></tbody>
</table>
</div>
<div class="container" >
           
<form:form action="addcat" method="post">
	 <div class="form-group">	
        <button type="submit" class="btn btn-success">ADD A NEW PRODUCT INTO THE LIST</button>
      </div>
           </form:form>
                    </div><br>

</body>
</html>