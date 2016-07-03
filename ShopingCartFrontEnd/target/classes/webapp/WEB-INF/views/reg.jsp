<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Funtastic Toys-Registration</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
t1 {
	padding-left: 22em;
}

t2 {
	padding-left: 20em;
}
.body {
    background-color: #eee;
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
            <form:form class="form-horizontal" action="register" method="post" role="form">
                <h2>Registration Form</h2>
              
                 <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">NAME</label>
                    <div class="col-sm-6">
                        <input type="text" id="pw" name="name"  class="form-control">

                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="text" id="email" name="email" class="form-control">

                    </div>
                </div>
               
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-6">
                        <input type="password" id="pw" name=password  class="form-control">

                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-6">
                        <input type="text" id="pw" name=addr  class="form-control">

                    </div>
                </div>
               
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Phone Number</label>
                    <div class="col-sm-6">
                        <input type="text" id="pw" name="phno" class="form-control">

                    </div>
                </div>
               
               
               
                <div class="form-group">
                    <div class="col-md-2">
                    <t1>
                        <button type="submit" class="btn btn-success">REGISTER</button>
                    </t1></div>
                    <div class="col-md-1">
                    <t2><button type="reset" class="btn btn-danger">RESET</button>
                    </t2></div>
                </div>
            </form:form> <!-- /form -->
        </div> <!-- ./container -->

</body>
</html>