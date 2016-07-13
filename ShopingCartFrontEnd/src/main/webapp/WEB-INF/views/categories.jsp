<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>


<title>FUNTASTIC TOYS-Categories</title>


<script>
  $(function() {
    var availableTags = [
      "teddy","funskool","lego","a","ab"
    ];
    $( "#tag" ).autocomplete({
      source: availableTags
    });
  });
  </script>
<script>

var lis=${list}
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = lis;
		
	});
</script>
<script type="text/javascript">
 function myFunction() {
	 {
	      var x = confirm("Are you sure you want to delete?");
	      if (x)
	          return true;
	      else
	        return false;
	    }
    
}
</script>
<style>

.has-feedback-left input.form-control {
	padding-left: 34px; /* @input-height-base; */
	padding-right: 12px; /* @padding-base-horizontal */
}

.has-feedback-left .form-control-feedback {
	left: 0;
}

t1 {
	padding-left: 10em;
}
t2 {
	padding-left: 24em;
}
t3 {
	padding-left: 26em;
}
t4{
padding-left:14em;}
.has-feedback-left .form-control-feedback {
	left: 0;
}

.has-feedback-left input.form-control {
	padding-left: 34px; /* @input-height-base; */
	padding-right: 12px; /* @padding-base-horizontal */
}

t1 {
	padding-left: 18em;
}

.navbar-default {
	background-color: #0099ff;
	color: black;
	border-radius: 0;
}

.nav.navbar-nav li a {
	color: white;
}
</style>
</head>
<body ng-app="myApp" ng-ctrl="myCtrl">
	<div class="container-fluid">
		<nav class="navbar navbar-default">

		<div class="navbar-header">
			<a class="navbar-brand" href="welcome"
				style="font-family: Comic Sans MS; color: white">FUNTASTIC TOYS</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="offer" style="color: black">Offer Zone</a></li>
					<li><a href="brand" style="color: black">Brands</a></li>
					<li><a href="char" style="color: black">Character</a></li>
					<li><a href="categories" style="color: black">Category</a></li>
				</ul></li>
			<li><a href="helpline">Contact</a></li>
			<li><a href="gift">Gift Vouchers</a></li>
			<li><a href="#"><font face="Comic Sans MS">HELLO
						${userid}</font></a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="reg"><i class="glyphicon glyphicon-user"></i>
					Sign Up</a></li>
			<li><a href="index"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
			<li><a href="cart"><span
					class="glyphicon glyphicon-shopping-cart"></span> CART</a></li>

		</ul>

		</nav>
	</div>
	
	
<div class="container">
	<form:form action="searchcat" method="post">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 ">
				<div id="imaginary_container">
					<div class="input-group stylish-input-group">
						<div class="form-group has-feedback has-feedback-left">
							<input type="text" name="cn" id="tag" class="form-control" placeholder="Search" />
							<i class="glyphicon glyphicon-search form-control-feedback"></i>
						</div>
						<span class="input-group-addon">
							<button type="submit">
								<span class="glyphicon glyphicon-arrow-right"></span>
							</button>
						</span>
					</div>
				</div>
			</div>
		</div></form:form>
	</div>
		
		
		<br><br>
<div class="container" >
           
<form:form action="addcat" method="post">
	 <div class="form-group">	
           
   <t1>        <button type="submit" class="btn btn-success">ADD A NEW PRODUCT INTO THE LIST</button></t1></div>
           </form:form>
           <form:form action="retrive" method="post">
	 <div class="form-group">	
           
   <t4>        <button type="submit" class="btn btn-success">RETRIVE THE DELETED DATA </button></t4></div>
           </form:form>
                    </div><br>
	<br>
	

		<center><h3>LIST OF AVAILABE CATEGORIES</h3></center>
		<br>
		
	<center>${op}</center>
	
	<br>
	
	<div class="container" >
<table width="50%" class="table table-hover">
	<tr>

		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Stock</th>
		<th align="left">Total Value</th>
		
		<th align="left">UPDATE</th>
		<th align="left">DELETE</th>
	</tr>
	
		<c:forEach items="${list}" var="category" varStatus="status">
		<tr>
		
			<td>${category.catid}</td>
			<td>${category.catname}</td>
			<td>${category.stock}</td>
			<td>${category.tot_val}</td>
			<td>
            <form:form action="editcat?key=${category.catid}" method="post">
        <div class="form-group">	
        
           <button type="submit" class="btn btn-success">UPDATE PRODUCT</button></div>
  </form:form></td>
  <td>
        
 <form:form action="deletepdt?key=${category.catid}" method="post" >
        <div class="form-group">	
        
       <button type="submit" id="demo" Onclick="return myFunction();" value="1" class="btn btn-danger">DELETE PRODUCT</button></div>
                 
			 </form:form></td>
		</tr>	</c:forEach>
</table></div>
  
              
  



</body>
</html>