<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
     
      <%@  taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>FUNTASTIC TOYS</title>
<style >
.img-wrapper {
    display: inline-block;
    overflow: hidden;
}


.img-wrapper img {
 
     transition: all .6s ease;
   
}

.img-wrapper img:hover {
    transform:scale(1.5);    
    
   
}
t1{padding-left:5em;}

.navbar-default {
	background-color: #0099ff;
	color: black;
	border-radius: 0;
}

.nav.navbar-nav li a {
	color: white;
}
.has-feedback-left input.form-control {
	padding-left: 34px; /* @input-height-base; */
	padding-right: 12px; /* @padding-base-horizontal */
}

.has-feedback-left .form-control-feedback {
	left: 0;
}
</style>
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
			<li><a href="#"><font face="Comic Sans MS">HELLO
						${sessionScope.user}</font></a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="reg.jsp"><span class="glyphicon glyphicon-user"></span>
					Sign Up</a></li>
			<li><a href="Login.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="cart.jsp"><span
					class="glyphicon glyphicon-shopping-cart"></span> CART</a></li>

		</ul>

		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 ">
				<div id="imaginary_container">
					<div class="input-group stylish-input-group">
						<div class="form-group has-feedback has-feedback-left">
							<input type="text" class="form-control" placeholder="Search" />
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
		</div>
	</div>


<c:set var="prdt" scope="request" value="${requestScope.pdt}"/>

<c:if test="${prdt eq 'f_mono'}">
<div class="container-fluid">
		<div class="row">
			<div class="col-md-5">
			<img src=images/mono.jpg>
			</div>
			<div class="col=md-7">
			<h2>FUNSKOOL:MONOPOLY-For all Ages!!</h2>
			<hr>
			Customer Rating:4.5 Stars<t1>
			<a href="feeback.jsp">Write a Review</a></t1>
			<t1>
			<a href="fav.jsp">Add to Favorites</a></t1>
			<hr>
			<ul>
			<li>Min Age:8 Years</li>
			<li>Type:Board Games</li>
			<li>Brand:FunSkool</li>
			<li>Delivery By:Usually delivered in 15 Days</li>
			<li>Cash On Delivery Available</li>
			</ul>
			<h3>Rs.1562</h3><br>
			<a href="cart.jsp">
			<button type="button" class="btn btn-warning">ADD TO CART</button></a>
			<a href="Login.jsp">
			<t1><button type="button" class="btn btn-success">BUY NOW</button></t1></a>
			
			</div></div>
			<div class="container-fluid">
			<div class="row">
			<hr style="height:1px;border:none;color:#333;background-color:#333;" /></div>
			
   <p>Notes for Monopoly Family Championship Board Game</p><hr>
   <p>IMPORTANT NOTE!</p>
   <ul><li>The color of some product parts may vary from what is shown in the image</li></ul>
   <hr style="height:1px;border:none;color:#333;background-color:#333;" />
  <p> Monopoly Family Championship Board Game Price: Rs. 1562</p>
  <p>Who will be the champion in your home? Take your chance to play like a pro 
  in the MONOPOLY Championship Edition!Featuring a speed die for a faster, 
  more intense game of MONOPOLY!Includes gameboard, 8 movers with carry bag, 
  28 Title Deed cards, 16 Chance cards, 16 Community Chest cards, 1 pack of 
  MONOPOLY money, 32 silver houses, 12 gold hotels, 2 number dice, 1 speed die, 
  championship scorepad, champions trophy, 6 name strips and instructions.
  </p>
  <hr style="height:1px;border:none;color:#333;background-color:#333;" />
  <p>Specifications of Monopoly Family Championship Board Game</p>
  <hr>
<p>PRODUCT DIMENSIONS</p>

<p>Important Note:	The color of some product parts may vary from
 what is shown in the image</p><hr>
<p>GENERAL</p>

<p>
Character:	Monopoly</p>
</div>
</div>

   </c:if>    
    
    <c:if test="${prdt eq 's_bear'}">
   <div class="container-fluid">
		<div class="row">
			<div class="col-md-5">
			<img src=images/bear.jpeg>
			</div>
			<div class="col=md-7">
			<h2>Dimpy Stuff Bear W/Scarf in Sitting 40Cm - 40 cm(Pink)</h2>
			<hr>
			Customer Rating:4.5 Stars<t1>
			<a href="feeback.jsp">Write a Review</a></t1>
			<t1>
			<a href="fav.jsp">Add to Favorites</a></t1>
			<hr>
			<ul>
			<li>Min Age:3 Years</li>
			<li>Type:Teddy Bear</li>
			<li>Brand:Dimpy</li>
			<li>Filling Material: 100% Virgin Polyster Staple fibre Filling</li>
			<li>Delivery By:Usually delivered in 5 Days</li>
			<li>Cash On Delivery Available</li>
			</ul>
			<h3>Rs.562</h3><br>
			<a href="cart.jsp">
			<button type="button" class="btn btn-warning">ADD TO CART</button></a>
			<a href="Login.jsp">
			<t1><button type="button" class="btn btn-success">BUY NOW</button></t1></a>
			
			</div></div>
			<div class="container-fluid">
			<div class="row">
			<hr style="height:1px;border:none;color:#333;background-color:#333;" /></div>
			
   <p>Key Features of Dimpy Stuff Bear W/Scarf in Sitting 40Cm - 40 cm</p><hr>
   
   <ul>
   <li>Huggable</li>
    <li>Cute</li>
     <li>Cuddly</li>
      <li>Super Soft</li>
       <li>Non Toxic</li>
        <li> International Safety Standards</li>
         <li>Attractive Colors</li>
          <li>For Girls</li></ul>
          <p>IMPORTANT NOTE!</p>
          <hr>
   <ul><li>The color of some product parts may vary from 
   what is shown in the image</li>
   </ul>
   <hr style="height:1px;border:none;color:#333;background-color:#333;" />
  <p>Specifications of Dimpy Stuff Bear W/Scarf in Sitting 40Cm - 40 cm (Pink)</p>
 <div class="row">
 <div class="col-md-6"> <table class="table table-striped">
<thead>
<tr><th>SPECIFICATION </th>
<th>DIMENSIONS</th></tr>
</thead>
<tbody>
<tr><td>Product Weight</td>
<td>750 g</td>
</tr>
<tr><td>Product Depth</td>
<td>30 cm</td>
</tr>
<tr><td>Product Width</td>
<td>30 cm</td>
</tr>
</tbody>
</table>
</div></div>
 <div class="row">
 <div class="col-md-6"> <table class="table table-striped">
<thead>
<tr><th>
GENERAL </th>
</tr></thead>
<tbody>
<tr><td>External Material</td>
<td>Super Soft Fabrics</td>
</tr>
<tr><td>Country of Manufacture</td>
<td>India</td>
</tr>
<tr><td>Age Group</td>
<td>3+ Years</td>
</tr>
<tr><td>Type</td>
<td>Teddy Bears</td>
</tr>
<tr><td>Washable</td>
<td>Yes</td>
</tr>
<tr><td>Number of Contents</td>
<td>1</td>
</tr>
</tbody>
</table>
</div></div>

</div>
</div>
   </c:if>    
    <c:if test="${prdt eq 's_brown'}">
    <div class="container-fluid">
		<div class="row">
			<div class="col-md-5">
			<div class="img-wrapper">
			<img src="images/beans.jpg" alt="" class="img-responsive">
			</div></div>
			<div class="col=md-7">
			<h2>Cuddles Scholer Teddy - 20 cm(Brown)</h2>
			<hr>
			Customer Rating:4.5 Stars<t1>
			<a href="feeback.jsp">Write a Review</a></t1>
			<t1>
			<a href="fav.jsp">Add to Favorites</a></t1>
						<hr>
						<ul>
			<li>Min Age:3 Years</li>
			<li>Type:Teddy Bear</li>
			<li>Brand:Cuddles</li>
			<li>Filling Material: 100% Virgin Polyster Staple fibre Filling</li>
			<li>Delivery By:Usually delivered in 5 Days</li>
			<li>Cash On Delivery Available</li>
			</ul>
			<h3>Rs.299</h3><br>
			<a href="cart.jsp">
			<button type="button" class="btn btn-warning">ADD TO CART</button></a>
			<a href="Login.jsp">
			<t1><button type="button" class="btn btn-success">BUY NOW</button></t1></a>
			
			</div></div>
			<div class="row">
			<hr style="height:1px;border:none;color:#333;background-color:#333;" /></div>
			
   <p>Key Features of Cuddles Scholer Teddy - 20 cm</p><hr>
   
   <ul>
  
     <li>Cuddly</li>
      <li>Super Soft</li>
       <li>Non Toxic</li>
        <li> International Safety Standards</li>
         
          <p>IMPORTANT NOTE!</p>
          <hr>
   <ul><li>The color of some product parts may vary from 
   what is shown in the image</li>
   </ul>
   <hr style="height:1px;border:none;color:#333;background-color:#333;" />
  <p>Specifications of  Cuddles Scholer Teddy - 20 cm</p>
 <div class="row">
 <div class="col-md-6"> <table class="table table-striped">
<thead>
<tr><th>SPECIFICATION </th>
<th>DIMENSIONS</th></tr>
</thead>
<tbody>
<tr><td>Product Weight</td>
<td>200 g</td>
</tr>
<tr><td>Product Depth</td>
<td>10 cm</td>
</tr>
<tr><td>Product Width</td>
<td>13 cm</td>
</tr>
</tbody>
</table>
</div></div>
 <div class="row">
 <div class="col-md-6"> <table class="table table-striped">
<thead>
<tr><th>
GENERAL </th>
</tr></thead>
<tbody>
<tr><td>External Material</td>
<td>Super Soft Fabrics</td>
</tr>
<tr><td>Country of Manufacture</td>
<td>India</td>
</tr>
<tr><td>Age Group</td>
<td>3 - 10 Years</td>
</tr>
<tr><td>Type</td>
<td>Teddy Bears</td>
</tr>
<tr><td>Washable</td>
<td>Yes</td>
</tr>
<tr><td>Sound Features</td>
<td>Song</td>
</tr>
<tr><td>Size</td>
<td>Medium,20cm</td>
</tr>
<tr><td>Number of Contents</td>
<td>1</td>
</tr>
</tbody>
</table>
</div></div>

</div>

    </c:if>
    

</body>
</html>
    
       
