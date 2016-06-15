<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
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
<title>FUNTASTIC TOYS-Welcome</title>
<style>
.navbar-default {
	background-color: #0099ff;
	color: black;
	border-radius: 0;
}

.nav.navbar-nav li a {
	color: white;
}

.carousel-inner img {
	width: 340px;
	height: 360px;
	-webkit-filter: grayscale(20%);
	filter: grayscale(20%); /* make all photos black and white */
	margin: auto;
}

.has-feedback-left input.form-control {
	padding-left: 34px; /* @input-height-base; */
	padding-right: 12px; /* @padding-base-horizontal */
}

.has-feedback-left .form-control-feedback {
	left: 0;
}

.carousel {
	background: white;
}

.carousel-caption {
	position: relative;
	color: green;
	left:auto;
	right:auto;
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
			<li><a href="reg.jsp"><i class="glyphicon glyphicon-user"></i>
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
	<!-- this is for the top navigation bar 

  <nav class="navbar navbar-default" >
  <div class="container-fluid">
    
   
   
  </div>
</nav>-->






	<!-- this is for the image scrolling -->
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<h3>FAST SELLING</h3>
				<a href="char.jsp" class="thumbnail"> <img src="images/chopper.jpg"
					alt="CHOPPER" style="width: 150px; height: 150px">
					<p>
						<center>
								<h5>
									CHOPPER WITH 3 ROTORS<br>Rs.420
								</h5>
							</center>
					</p>
				</a> <a href="char.jsp" class="thumbnail"> <img src="images/m.jpg"
					alt="RUBIX CUBE" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									RUBIX CUBE<br>Rs.95
								</h5>
							</center></strong>
					</p>
				</a>

			</div>
			<div class="col-md-9">
				<div class="container-fluid">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">

						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>


						<div class="carousel-inner" role="listbox">
							<div class="item active">

								<a href="angrybird.jsp"><img src="images\angry.jpg"
									alt="Angry Birds"></a>
								<div class="carousel-caption">
									<h3>HOT DEAL!!</h3>
									<p>Upto 60% off on Angry Birds Collection</p>
								</div>
							</div>

							<div class="item">
								<a href="lego.jsp"><img src="images\4.jpg" alt="Lego" /></a>
								<div class="carousel-caption">
									<h3>LEGO</h3>
									<p>New range of toys available now.</p>
								</div>
							</div>

							<div class="item">
								<a href="funskool.jsp"><img src="images\b.jpg"
									alt="Fun Skool"></a>
								<div class="carousel-caption">
									<h3>FUNSKOOL</h3>
									<p>Launching FunSkool from today!!</p>
								</div>
							</div>
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>

					</div>


</div>
		</div>
	</div>
</div>
					<!-- to display the images in thumbnail -->

<div class="container">
		<h2>Best Bargains</h2>

		<div class="row">
			<div class="col-md-3">
				<a href="Productservlet?param=f_mono" class="thumbnail">
					<p>Buy 1 & Get 1 Free!!!</p> <img src="images/a.jpg" alt="FunSkool"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="Productservlet?param=s_bear" class="thumbnail">
					<p>70% off on Teddy Bear.</p> <img src="images/bear.jpeg" alt="teddy"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="remote.jsp" class="thumbnail">
					<p>Free delivery for Cars</p> <img src="images/remote.jpg" alt="cars"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="lego1.jsp" class="thumbnail">
					<p>10% off on Lego</p> <img src="images/8.jpg" alt="cars"
					style="width: 150px; height: 150px">
				</a>
			</div>
		</div>

<h2>SHOP BY AGE</h2>

		<div class="row">
			<div class="col-md-3">
				<a href="hw.jsp" class="circle">
					 <img src="images/0-2.jpg" alt="0 to 2 years"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="hw.jsp" class="circle">
					 <img src="images/3-4.jpg" alt="3 to 4 years"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="hw.jsp" class="circle">
					 <img src="images/5-8.jpg" alt="5 to 8 years"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="hw.jsp" class="circle">
					 <img src="images/9-12.jpg" alt="9 to 12 years"
					style="width: 150px; height: 150px">
				</a>
			</div>
		</div>


		<h2>Brands</h2>

		<div class="row">
			<div class="col-md-3">
				<a href="hw.jsp" class="thumbnail">
					<p>Hot Wheels</p> <img src="images/hw.jpg" alt="hot wheels"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="barbie.jsp" class="thumbnail">
					<p>Barbie</p> <img src="images/barbie.jpg" alt="barbie"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="fp.jsp" class="thumbnail">
					<p>Fisher Price</p> <img src="images/fp.png" alt="Fisher Price"
					style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-3">
				<a href="lego.jsp" class="thumbnail">
					<p>Lego</p> <img src="images/lego.png" alt="lego"
					style="width: 150px; height: 150px">
				</a>
			</div>
		</div>

		<div class="row">
			<h2>Only 4 U!!</h2>
			<div class="col-md-3">
				<a href="Productservlet?param=s_brown" class="thumbnail"><img src="images/beans.jpg"
					alt="brown bear" style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>BROWN BEAR-Rs.299
							</center>
							</h5></strong>
					</p></a>
			</div>
			<div class="col-md-3">
				<a href="Productservlet?param=s_bheem" class="thumbnail"><img src="images/bheem.jpg"
					alt="bheem" style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>CHOTA BHEEM-Rs.150
							</center>
							</h5></strong>
					</p></a>
			</div>
			<div class="col-md-3">
				<a href="Productservlet?param=l_lego" class="thumbnail"><img src="images/9.jpg"
					alt="puzzle" style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>LEGO-Rs.850
							</center>
							</h5></strong>
					</p></a>
			</div>

			<div class="col-md-3">
				<a href="Productservlet?param=s_ele" class="thumbnail"><img src="images/elephant.jpg"
					alt="Elephant" style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>ELEPHANT -Rs.450
							</center>
							</h5></strong>
					</p></a>
			</div>
		</div>
	</div>
</body>
</html>