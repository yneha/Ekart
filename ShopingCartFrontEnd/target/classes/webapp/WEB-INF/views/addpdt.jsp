<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD CATEGORY</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
t1 {
	padding-left: 20em;
}

t2 {
	padding-left: 24em;
}

.navbar-default {
	background-color: #76448A;
	color: black;
	border-radius: 0;
}

.nav.navbar-nav li a {
	color: white;
}
</style>
</head>
<body>
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
						${userid} </font></a></li>
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
	<h1></h1>
	<center>
		<h2>
			<c:if test="${empty product.pdtid}">ADD PRODUCT INFORMATION
	</c:if>
			<c:if test="${!empty product.pdtid}">EDIT PRODUCT INFORMATION</c:if>
		</h2>
	</center>
	<div class="container">
		<form:form action="addPdt" commandName="product" method="post">




			<div class="row">

				<div class="col-md-2">
					<form:label path="pdtid">Product ID</form:label>
				</div>
				<div class="col-md-6">

					<c:choose>
					<c:when test="${!empty product.pdtid}">
						<td><form:input path="pdtid"  class="form-control"  value="${product.pdtid }" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="pdtid" readonly="true" value="${product.pdtid }" class="form-control" /></td>
					</c:otherwise>
				</c:choose>

					
					
						

				

				</div>
			</div>

			<br>
			<div class="row">

				<div class="col-md-2">
					<form:label path="pdtid">PRODUCT NAME</form:label>
				</div>
				<div class="col-md-6">
					<form:input type="text" id="id" value="${product.name }"
						path="name" class="form-control" />
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="row">

				<div class="col-md-2">
					<form:label path="agegrp">AGE GROUP</form:label>
				</div>
				<div class="col-md-6">
					<form:input type="text" value="${product.agegrp}" id="pw"
						path="agegrp" class="form-control" />
				</div>
			</div>

			<br>
			<br>
			<div class="row">

				<div class="col-md-2">
					<form:label path="brand">BRAND</form:label>
				</div>
				<div class="col-md-6">
					<form:input type="text" value="${product.brand}" id="pw"
						path="brand" class="form-control" />
				</div>
			</div>

			<br>
			<br>
			<div class="row">

				<div class="col-md-2">
					<form:label path="material">MATERIAL</form:label>
				</div>
				<div class="col-md-6">
					<form:input type="text" id="pw" value="${product.material}"
						path="material" class="form-control" />
				</div>
			</div>

			<br>
			<br>
			<div class="row">

				<div class="col-md-2">
					<form:label path="price">PRICE</form:label>
				</div>
				<div class="col-md-6">

					<form:input type="text" id="email" value="${product.price}"
						path="price" class="form-control" />
				</div>


			</div>

			<div class="row">

				<div class="col-md-2">

					<form:label path="supplier">Select Category list:</form:label>
					<div class="col-md-6">

						<form:select path="category.catname" items="${categoryList}"
							itemValue="catname" itemLabel="catname" />

					</div>
				</div>





			</div>

			<div class="row">

				<div class="col-md-2">

					<form:label path="supplier">Select Supplier list:</form:label>
					<div class="col-md-6">

						<form:select path="supplier.s_name" items="${supplierList}"
							itemValue="s_name" itemLabel="s_name" />
					</div>
				</div>
			</div>
			<div class="row">


				<div class="col-md-1">
					`
					<t1> <c:if test="${!empty product.pdtid}">
						<button type="submit" class="btn btn-success">EDIT</button>
					</c:if> <c:if test="${empty product.pdtid}">
						<button type="submit" class="btn btn-success">ADD</button>
					</c:if>
						
				 </t1>
				</div>

				<div class="col-md-1">
					<t2>
					<button type="reset" class="btn btn-danger">RESET</button>
					</t2>
				</div>
				<h2>
					<a href="Upload">Upload</a>
				</h2>
			</div>
		</form:form>
		<!-- /form -->
	</div>
	<!-- ./container -->
</body>
</html>

