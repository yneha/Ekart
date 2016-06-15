<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .navbar-default 
  {
    background-color:#76448A;
    color: black;
    
    border-radius:0;
   }
   .nav.navbar-nav li a {
    color: white;
    }
   </style>
</head>
<body><div class="container-fluid">
<nav class="navbar navbar-default" >
  
    <div class="navbar-header">
      <a class="navbar-brand" href="Welcome.jsp" style="font-family:Comic Sans MS; color:white">FUNTASTIC TOYS</a>
    </div>
    <ul class="nav navbar-nav">
   <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="offer.jsp" style="color:black">Offer Zone</a></li>
          <li><a href="brand.jsp" style="color:black">Brands</a></li>
          <li><a href="char.jsp" style="color:black">Character</a></li>
          <li><a href="categories.jsp" style="color:black">Category</a></li>
        </ul>
   </li>
      <li><a href="helpline.jsp">Contact</a></li>
      <li><a href="gift.jsp">Gift Vouchers</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="reg.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> CART</a></li>
  
 </ul>
  
</nav></div>
</body>
</html>