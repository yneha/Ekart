<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Customer Care</title>
<style>
.navbar-default {
	background-color: #76448A;
	color: black;
	border-radius: 0;
}
.has-feedback-left input.form-control {
	padding-left: 34px; /* @input-height-base; */
	padding-right: 12px; /* @padding-base-horizontal */
}

.has-feedback-left .form-control-feedback {
	left: 0;
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
					<li><a href="products" style="color: black">Products</a></li>
					<li><a href="suppliers" style="color: black">Suppliers</a></li>
				</ul></li>
			<li><a href="helpline">Customer Care</a></li>
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
		<h2>Help Centre</h2>
<p>
Assistance at your finger tips
	</p>
		<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 ">
				<div id="imaginary_container">
					<div class="input-group stylish-input-group">
						<div class="form-group has-feedback has-feedback-left">
							<input type="text" class="form-control" placeholder="What can we help with?" />
							<i class="glyphicon glyphicon-search form-control-feedback"></i>
						</div>
						<span class="input-group-addon">
							<button type="submit" formaction="#">
								<span class="glyphicon glyphicon-arrow-right"></span>
							</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	Type of your Problem
	<div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Order</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body"><a data-toggle="collapse" data-parent="#accordion" href="#collapse4">How can I place an Order?</a></div>
        <div class="panel-body"><a data-toggle="collapse" data-parent="#accordion" href="#collapse5">How can I track an Order?</a></div>
        <div class="panel-body"><a data-toggle="collapse" data-parent="#accordion" href="#collapse6">How can I cancel an Order?</a></div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Shopping</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body"><a data-toggle="collapse" data-parent="#accordion" href="#collapse7">Why do I see different prices for the same product?</a></div>
        <div class="panel-body"><a data-toggle="collapse" data-parent="#accordion" href="#collapse8">What does 'Permanently Discontinued' or 'Out of Print' mean?</a></div>
        <div class="panel-body"><a data-toggle="collapse" data-parent="#accordion" href="#collapse9">View all queries related to 'Shopping'.</a></div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Payment</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body"><a data-toggle="collapse" data-parent="#accordion" href="#collapse10">
        What is Cash on Delivery?</a>
       
        <div id="collapse10" class="panel-collapse collapse">

With Cash on Delivery (CoD), you can pay for your order in cash when it is actually being delivered.

You can also pay with your Credit or Debit card if the courier person is carrying a card machine.
        </div> <br>
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse11">How can I pay for an order?</a>

<div id="collapse11" class="panel-collapse collapse"> 
You can choose to pay for an order with any of the below methods:

    Cash on Delivery  
    Net Banking
    Visa, MasterCard, Maestro and American Express Credit or Debit cards issued in India and 21 other countries
    Gift Card</div>
      </div></div>
    </div>
  </div> 
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">CONTACT US</button>
  <div id="demo" class="collapse">
    <div class="container">
<center>  <h1>Contact Us</h1></center><br><br><br>
  <table>
  <form class="form-inline" role="form">
  <div class="row">
    <div class="form-group"><div class="col-md-3">
    <label for="email"><t1>Email:</t1></label></div>
      <div class=col-md-6><input type="email" class="form-control" id="email" placeholder="Enter email" required>
   </div> </div></div><br>
   <div class="form-group"><div class="col-md-3">
 
     <label for="pwd"><t2>Password:</t2></label></div>
     <div class="col-md-6"> <input type="password" class="form-control" id="pwd" placeholder="Enter password" required>
   </div> </div><br><br>
    <div class="form-group"><div class="col-md-3">
  <label for="comment"><t2>Comment:</t2></label></div>
  <div class="col-md-6"><textarea class="form-control" rows="5" id="comment"></textarea></div>
</div><br><br><br>
<button type="button" class="btn btn-success">Send message</button>
</form>
</table>

</div>


    
  </div>

	</div>
</body>
</html>