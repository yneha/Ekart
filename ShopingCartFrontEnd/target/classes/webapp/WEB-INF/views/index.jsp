<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>FUNTASTIC TOYS-Login.</title>
<style>
t1 {
	padding-left: 18em;
}

t2 {
	padding-left: 20em;
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
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-default">

		<div class="navbar-header">
			<a class="navbar-brand" href="Welcome.jsp"
				style="font-family: Comic Sans MS; color: white">FUNTASTIC TOYS</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="offer.jsp" style="color: black">Offer Zone</a></li>
					<li><a href="brand.jsp" style="color: black">Brands</a></li>
					<li><a href="char.jsp" style="color: black">Character</a></li>
					<li><a href="categories.jsp" style="color: black">Category</a></li>
				</ul></li>
			<li><a href="helpline.jsp">Contact</a></li>
			<li><a href="gift.jsp">Gift Vouchers</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="reg"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="index"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
			<li><a href="cart"><span
					class="glyphicon glyphicon-shopping-cart"></span> CART</a></li>

		</ul>

		</nav>
	</div>
	<div class="container">
		<h3>LOGIN</h3>

		<f:form class="form-horizontal" role="form" action="isValid"
			method="post">
			<div class="form-group">
				<label class="control-label col-sm-3" for="userid">USER ID:</label>
				<div class="col-sm-3">
					<input type="text" name="userid" class="form-control"
						placeholder="Enter your ID" required pattern="[A-Za-z]+"
						title="Only Alphabets">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-3" for="password">PASSWORD:</label>
				<div class="col-sm-3">
					<input type="password" name="password" class="form-control"
						placeholder="Enter your password" required>
				</div>
			</div>

			<br>

			<div class="col-sm-1">
				<t1>
				<button type="submit" class="btn btn-success">SUBMIT</button>
				</t1>
			</div>

			<div class="col-sm-1">
				<t2>
				<button type="reset" class="btn btn-danger">RESET</button>
				</t2>
			</div>

		</f:form>
		<br> <br> <br> <img
			src="<c:url value="/resource/image/toys.jpg" />" />
	</div>
</body>
</html>