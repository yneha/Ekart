<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
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
						</span>0
				</div>
			</div>
		</div>
	</div></div>
	<div class="container">
  <div class="panel-group" id="accordion">
        <h2>Type of your Problem</h2>
         <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
              <div class="collapse-group">
            <p><a class="btn" data-toggle="collapse" data-parent="#accordion" data-target="#demoout">
             <i class="fa fa-truck"></i>>ORDERS&raquo;</a></p></div></h4></div>
            <div class="collapse in" id="demoout">
                
                <div class="collapse-group" id="demoout">
                    <p><a class="panel-title" data-toggle="collapse" data-target="#demoin">How can I place an Order? &raquo;</a></p>
                      <div class="collapse in"  id="demoin">
             <p class="panel-body">           

Shopping from us is easy!

 </p>
<ul>
 <li>   Select the product you'd like to buy and 'Check Availability at' your desired pincode</li>
<li>    Add products to your cart or just hit Buy Now</li>
<li>    Choose or Add delivery address</li>
<li>    Use a preferred payment mode and confirm the order</li>
</ul>
Happy shopping.
</div>
                    <p><a class="panel-title" data-toggle="collapse" data-target="#demoinn">How can I track my order?&raquo;</a></p>
                      <div class="collapse in"  id="demoinn">
                        <p class="panel-body">It's easy! Just go to My Orders & click on the Order you want to see.</p></div>
                    <p><a class="panel-title" data-toggle="collapse" data-target="#demoinnn">My order has reached the nearest hub but why isn’t it out for delivery yet? &raquo;</a></p>
                     <div class="collapse in"  id="demoinnn">
                        <p class="panel-body">Don't worry, your order will reach you on time like we promised. To know when your order is scheduled to be delivered, visit My Orders. </p></div>
                      
                        
                   
                    </div>    
                    </div>
                 </div>
            </div>
        </div>
        
  <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
  
              <div class="collapse-group">
            <p><a class="btn" data-toggle="collapse" data-parent="#accordion" data-target="#demooout"> PAYMENT&raquo;</a></p></div></h4></div>
            <div class="collapse in" id="demooout">
                
               
                    <p><a class="panel-title" data-toggle="collapse" data-target="#demooin">What is Cash on Delivery?&raquo;</a></p>
                      <div class="collapse in" class="panel-body" id="demooin">
             <p>           



With Cash on Delivery (CoD), you can pay for your order in cash when it is actually being delivered.

You can also pay with your Credit or Debit card if the courier person is carrying a card machine.


 </p>

</div>
                    <p><a class="panel-title" data-toggle="collapse" data-target="#demooinn">How can I pay for an order?&raquo;</a></p>
                      <div class="collapse in" class="panel-body" id="demooinn">
                        <ul>
                        <li>Cash on Delivery  </li>
                        <li>Net Banking</li>
                        <li>Gift Card</li>
                        </ul></div>
                   
                   
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