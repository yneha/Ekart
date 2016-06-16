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
<title>FUNTASTIC TOYS-Categories</title>
<style>
.carousel-inner img {
	width: 340px;
	height: 360px;
	-webkit-filter: grayscale(20%);
	filter: grayscale(20%); /* make all photos black and white */
	margin: auto;
}

.carousel {
	background: white;
}

.carousel-caption {
	position: relative;
	color: green;
	left: auto;
	right: auto;
}

.has-feedback-left input.form-control {
	padding-left: 34px; /* @input-height-base; */
	padding-right: 12px; /* @padding-base-horizontal */
}

.has-feedback-left .form-control-feedback {
	left: 0;
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
			<li><a href="reg.jsp"><span class="glyphicon glyphicon-user"></span>
					Sign Up</a></li>
			<li><a href="Login.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="cart.jsp"><span
					class="glyphicon glyphicon-shopping-cart"></span> CART</a></li>

		</ul>

		</nav>
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
		<h2>CHARACTER TOYS</h2>

		<div class="row">
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/bheem.jpg"
					alt="Bheem" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									CHOTA BHEEM<br>Rs.230
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/jerrry.jpg"
					alt="Jerry" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									JERRY<br>Rs.130
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/frozen.jpg"
					alt="Frozen" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									FROZEN<br>Rs.180
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/minion.jpg"
					alt="Minion" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									MINION<br>Rs.250
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/mickey.jpg"
					alt="Mickey" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									MICKEY MOUSE<br>Rs.280
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/nemo.jpg"
					alt="Nemo" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									NEMO<br>Rs.150
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/spidey.jpg"
					alt="SPIDERMAN" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									SPIDERMAN<br>Rs.120
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/winne.jpg"
					alt="POOH" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									POOH<br>Rs.90
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/tweetu.jpg"
					alt="TWEETY" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									TWEETY<br>Rs.100
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/vinayak.jpg"
					alt="GOD GANESH" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									GOD GANESH<br>Rs.140
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/winnefamily.jpg"
					alt="WINNIE FAMILY" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									WINNIE FAMILY<br>Rs.280
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/minnie.jpg"
					alt="minnie mouse" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									MINNIE MOUSE<br>Rs.190
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/panda.jpg"
					alt="PANDA" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									KUNG-FU PANDA<br>Rs.80
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/penguin.jpg"
					alt="PENGUIN" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									PINGU THE PENGUIN<br>Rs.150
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/angry.jpg"
					alt="ANGRY BIRDS" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									ANGRY BIRDS<br>Rs.220
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
			<div class="col-md-3">
				<a href="char.jsp" class="thumbnail"> <img src="images/pokemon.jpg"
					alt="POKEMON" style="width: 150px; height: 150px">
					<p>
						<strong><center>
								<h5>
									POKEMON<br>Rs.160
								</h5>
							</center></strong>
					</p>
				</a>
			</div>
		</div>
	</div>
</body>
</html>