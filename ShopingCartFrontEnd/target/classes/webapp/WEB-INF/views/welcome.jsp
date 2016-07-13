<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page isELIgnored="false"%>

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
   <script>
  $(function() {
    var availableTags = [
      "teddy","funskool","lego"
    ];
    $( "#tag" ).autocomplete({
      source: availableTags
    });
  });
  </script>
 <script>

 $(document).ready(function(){ 
     $(window).scroll(function(){ 
         if ($(this).scrollTop() > 100) { 
             $('#scroll').fadeIn(); 
         } else { 
             $('#scroll').fadeOut(); 
         } 
     }); 
     $('#scroll').click(function(){ 
         $("html, body").animate({ scrollTop: 0 }, 600); 
         return false; 
     }); 
 });
 </script>

<title>FUNTASTIC TOYS-Welcome</title>
<style>
#scroll {
    position:fixed;
    right:10px;
    bottom:10px;
    cursor:pointer;
    width:50px;
    height:50px;
    background-color:#3498db;
    text-indent:-9999px;
    display:none;
    -webkit-border-radius:60px;
    -moz-border-radius:60px;
    border-radius:60px
}
#scroll span {
    position:absolute;
    top:50%;
    left:50%;
    margin-left:-8px;
    margin-top:-12px;
    height:0;
    width:0;
    border:8px solid transparent;
    border-bottom-color:#ffffff
}
#scroll:hover {
    background-color:#e74c3c;
    opacity:1;filter:"alpha(opacity=50)";
    -ms-filter:"alpha(opacity=50)";
}
.img-wrapper {
	display: inline-block;
	overflow: hidden;
}

.img-wrapper img {
	transition: all .3s ease;
}

.img-wrapper img:hover {
	transform: scale(1.05);
}

t1 {
	padding-left: 1em;
}
t3 {
	padding-left: 35em;
}

t5 {
	padding-left: 35em;
}

t2 {
	padding-left: 30em;
}

.navbar-default {
	background-color: #76448A;
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

.carousel {
	background: white; 
	height:500px;
 
}

.carousel-caption {
	position: relative;
	color: green;
	left: auto;
	right: auto;
}
.carousel img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  min-height:100%
max-height:none;
  max-width: none;
}

.hide {
	display: none;
}

.show {
	display: block;
}


#top-link-block.affix-top {
    position: absolute; /* allows it to "slide" up into view */
    bottom: -82px;
    left: 10px;
}
#top-link-block.affix {
    position: fixed; /* keeps it on the bottom once in view */
    bottom: 18px;
    left: 10px;
}
</style>

</head>
<body>
<div class="container-fluid">
<a href="javascript:void(0);" id="scroll" title="Scroll to Top" style="display: none;">Top<span></span></a>
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
					<li><a href="fav" style="color: black">Offer Zone</a></li>
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
	</div>

	${op}
  
	<div class="container">
	<form:form action="search">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 ">
				<div id="imaginary_container">
					<div class="input-group stylish-input-group">
						<div class="form-group has-feedback has-feedback-left">
						<div class="ui-widget">
							<input type="text" class="form-control" id="tag" placeholder="Search" />
							<i class="glyphicon glyphicon-search form-control-feedback"></i>
						</div></div>
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





	<!-- this is for the image scrolling -->
	<br>
	<div class="container-fluid">
	<div class="row">
	<div class="col-md-3">
	INTERESTING FACTS
	<img src="<c:url value="/resource/image/j.jpg"  />"
						class="img-responsive" alt="FunSkool"
						style="width: 150px; height: 150px">
						
				
	</div><div class="col-md-9"> 
					<div id="myCarousel" class="carousel slide" data-ride="carousel">

						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>


						<div class="carousel-inner" role="listbox">
							<div class="item active">

								<a href="angrybird"> <img
									src="<c:url value="/resource/image/angry.jpg" />"
									style="width: 150px; height: 450px" alt="Angry Birds"></a>
								<div class="carousel-caption">
									<h3>HOT DEAL!!</h3>
									<p>Upto 60% off on Angry Birds Collection</p>
								</div>
							</div>


							<div class="item">
								<a href="lego"> <img
									src="<c:url value="/resource/image/c1.jpg" />" alt="Lego" 
									style="width: 150px; height: 450px"/></a>
								<div class="carousel-caption">
									<h3>LEGO</h3>
									<p>New range of toys available now.</p>
								</div>
							</div>

							<div class="item">
								<a href="funskool"> <img
									src="<c:url value="/resource/image/hw1.jpg" />" 
									style="width: 150px; height: 450px"
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
</div></div>

				</div>
			</div>
		
	<!-- to display the images in circle -->
<br>
	<br>

	<br>
	<hr>
	<div class="container">

		<h3>BEST BARGAINS
<t5>
			<button type="button" class="btn btn-info">VIEW ALL</button></t5>
		</h3>
<div class="img-wrapper">
		<div class="row">
		
			<div class="col-md-2">
				<a href="Productservlet?param=f_mono" class="circle">
					<p>20% OFF</p> 
					
					<img src="<c:url value="/resource/image/j.jpg"  />"
						class="img-responsive" alt="FunSkool"
						style="width: 150px; height: 150px">
				
				</div>
				</a>
		
			<div class="col-md-2">
				<a href="Productservlet?param=f_mono" class="circle">
					<p>Buy 2 & GET 10% OFF</p> <img
						src="<c:url value="/resource/image/d.jpg" />"
						class="img-responsive" alt="FunSkool"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="Productservlet?param=f_mono" class="circle">
					<p>Buy 1 & Get 1 Free!!!</p> <img
						src="<c:url value="/resource/image/a.jpg" />"
						class="img-responsive" alt="FunSkool"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="Productservlet?param=s_bear" class="circle">
					<p>70% off on Teddy Bear.</p> <img src="<c:url value="/resource/image/bear.jpeg" />"
						class="img-responsive" alt="teddy"
						style="width: 150px; height: 150px">
					
						
				</a>
			</div>
			<div class="col-md-2">
				<a href="remote.jsp" class="circle">
					<p>Free delivery for Cars</p> <img
						src="<c:url value="/resource/image/remote.jpg" />"
						class="img-responsive" alt="cars"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="lego1.jsp" class="circle">
					<p>10% off on Lego</p> <img
						src="<c:url value="/resource/image/8.jpg" />"
						class="img-responsive" alt="cars"
						style="width: 150px; height: 150px">
				</a>
				
			</div>
		</div>
		</div></div>
<br><br><br>
		<hr>
			<div class="container">
		<h3>SHOP BY AGE<t5>
			<button type="button" class="btn btn-info">VIEW ALL</button></t5>
		</h3><div class="img-wrapper">
		<div class="row">
			
	<div class="col-md-2">
				<a href="hw.jsp" class="circle"> <img
						src="<c:url value="/resource/image/sba.png" />"
						class="img-responsive" alt="9 to 12 years"
						style="width: 150px; height: 150px">
				</a>
			</div>
		
			<div class="col-md-2">
				<a href="hw.jsp" class="circle"> <img
						src="<c:url value="/resource/image/0-2.jpg" />"
						class="img-responsive" alt="0 to 2 years"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="hw.jsp" class="circle"> <img
						src="<c:url value="/resource/image/3-4.jpg" />"
						class="img-responsive" alt="3 to 4 years"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="hw.jsp" class="circle"> <img
						src="<c:url value="/resource/image/5-8.jpg" />"
						class="img-responsive" alt="5 to 8 years"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="hw.jsp" class="circle"> <img
						src="<c:url value="/resource/image/9-12.jpg" />"
						class="img-responsive" alt="9 to 12 years"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="hw.jsp" class="circle"> <img
						src="<c:url value="/resource/image/12+.jpg" />"
						class="img-responsive" alt="9 to 12 years"
						style="width: 150px; height: 150px">
				</a>
			</div>
		
		</div>
		</div>
</div>

<br><br><br>
		<hr>
			<div class="container">
		<h3>Shop by Categories
		<t3>
			<button type="button" class="btn btn-info">VIEW ALL</button></t3>
		</h3>
<div class="img-wrapper">
		<div class="row">
			
			<div class="col-md-2">
				<a href="hw.jsp" class="circle">
					<img
						src="<c:url value="/resource/image/pu.jpg" />"
						class="img-responsive" alt="hot wheels"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="barbie" class="circle">
					 <img src="<c:url value="/resource/image/pu1.jpg" />"
						class="img-responsive" alt="barbie"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="fp.jsp" class="circle">
				 <img
						src="<c:url value="/resource/image/pu2.jpg" />"
						class="img-responsive" alt="Fisher Price"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="lego.jsp" class="circle">
					<img src="<c:url value="/resource/image/pu3.jpg" />"
						class="img-responsive" alt="lego"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="lego.jsp" class="circle">
					<img src="<c:url value="/resource/image/pu4.jpg" />"
						class="img-responsive" alt="lego"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="lego.jsp" class="circle">
					 <img src="<c:url value="/resource/image/pu5.jpg" />"
						class="img-responsive" alt="lego"
						style="width: 150px; height: 150px">
				</a>
			</div>
		</div>
		</div></div>
		<br><br><br>
		<hr>
			<div class="container">
			<h3>Only 4 U!!
			<t3>
					<button type="button" class="btn btn-info">VIEW ALL</button></t3>
				</h3>	<div class="img-wrapper">
		<div class="row">
		
			
			<div class="col-md-2">
				<a href="Productservlet?param=s_brown" class="circle"> <img
						src="<c:url value="/resource/image/beans.jpg" />"
						class="img-responsive" alt="brown bear"
						style="width: 150 px; height: 150px;">
					<br>
						<strong><center>
								<h5>BROWN BEAR-Rs.299
							</h5>
								</center>
							</strong>
					</a>
			</div>
			<div class="col-md-2">
				<a href="Productservlet?param=s_bheem" class="circle"> <img
						src="<c:url value="/resource/image/bheem.jpg" />"
						class="img-responsive" alt="bheem"
						style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>CHOTA BHEEM-Rs.150
							</h5>
								</center>
							</strong>
					</p></a>
			</div>
			<div class="col-md-2">
				<a href="Productservlet?param=l_lego" class="circle"> <img
						src="<c:url value="/resource/image/9.jpg" />" alt="puzzle"
						style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>LEGO-Rs.850
							</h5>
								</center>
							</strong>
					</p></a>
			</div>

			<div class="col-md-2">
				<a href="Productservlet?param=s_ele" class="circle"> <img
						src="<c:url value="/resource/image/elephant.jpg" />"
						class="img-responsive" alt="Elephant"
						style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>ELEPHANT -Rs.450
							</h5>
								</center>
							</strong>
					</p></a>
			</div>
			<div class="col-md-2">
				<a href="Productservlet?param=s_ele" class="circle"> <img
						src="<c:url value="/resource/image/panda.jpg" />"
						class="img-responsive" alt="Elephant"
						style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>PANDA -Rs.150
							</h5>
								</center>
							</strong>
					</p></a>
			</div>
			<div class="col-md-2">
				<a href="Productservlet?param=s_ele" class="circle"> <img
						src="<c:url value="/resource/image/pokemon.jpg" />"
						class="img-responsive" alt="Elephant"
						style="width: 150 px; height: 150px;">
					<p>
						<strong><center>
								<h5>POKEMON -Rs.250
							</h5>
								</center>
							</strong>
					</p></a>
			</div>
		</div>
	</div></div>
		<br><br><br>
		<hr>
		<div class="container">
			<h3>Shop by Brands</h3>
<div class="img-wrapper">
		<div class="row">
			
			<div class="col-md-2">
				<a href="hw.jsp" class="circle">
					<p>Hot Wheels</p> <img
						src="<c:url value="/resource/image/hw.jpg" />"
						class="img-responsive" alt="hot wheels"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="barbie.jsp" class="circle">
					<p>Barbie</p> <img
						src="<c:url value="/resource/image/barbie.jpg" />"
						class="img-responsive" alt="barbie"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="fp.jsp" class="circle">
					<p>Fisher Price</p> <img
						src="<c:url value="/resource/image/fp.png" />"
						class="img-responsive" alt="Fisher Price"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="lego.jsp" class="circle">
					<p>Lego</p> <img src="<c:url value="/resource/image/lego.png" />"
						class="img-responsive" alt="lego"
						style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="lego.jsp" class="circle">
					<p>Lego</p> <img src="<c:url value="/resource/image/dim.jpg" />"
						alt="lego" style="width: 150px; height: 150px">
				</a>
			</div>
			<div class="col-md-2">
				<a href="lego.jsp" class="circle">
					<p>Lego</p> <img src="<c:url value="/resource/image/dis.png" />"
						class="img-responsive" alt="lego"
						style="width: 150px; height: 150px">
				</a>
			</div>
		</div>
</div>
	

<div class="row-fluid summary">
<div class="span11">
  
</div>
<div class="span1">
    <button class="btn btn-success" data-toggle="collapse" data-target="#intro">View All Brands</button>
</div>
</div>
<div class="row-fluid summary">
<div id="intro" class="collapse"> 
    <a>Thomas</a>
    <a>Dimpy</a>
    <a>Spar</a>
</div>
</div>
<script>
$('button').click(function(){
$(this).text(function(i,old){
    return old=='View All Brands' ?  'Hide All Brands' : 'View All Brands';
});
});
</script>

<hr>
	<br>
<div class="container">
<div class="row">
<div class="col-md-4">
					<h3>
<a href="cart"><span class="glyphicon  glyphicon-map-marker	"></span>
					 TRACK YOUR ORDER </a>
					</h3>
				</div>
					<div class="col-md-4">
					<h3>
						<t1>
						<a href="cart"><span class="glyphicon glyphicon-refresh"></span>
					EASY RETURNS </a></t1>
					</h3>
				</div>
					<div class="col-md-4">
					<h3>
						<a href="index"><span
							class="glyphicon glyphicon-remove-circle"></span>
					CANCEL ORDER</a>
					</h3>
</div>
			</div>
<hr> <h6>Policies:<a href="#">Terms & Conditions</a>
<a href="#">Privacy</a> <a href="#">Security</a>
<t2>Connect With us:<a href="https://twitter.com/twitter"
					class="twitter-follow-button" data-show-count="false">Follow @twitter</a> <script>
						!function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
									.test(d.location) ? 'http' : 'https';
							if (!d.getElementById(id)) {
								js = d.createElement(s);
								js.id = id;
								js.src = p
										+ '://platform.twitter.com/widgets.js';
								fjs.parentNode.insertBefore(js, fjs);
							}
						}(document, 'script', 'twitter-wjs');
					</script>
						<a href="www.facebook.com">
<img src="<c:url value="/resource/image/fb.jpg" />">
						</a>
						</t2>

					</h6>
<hr>
			<h6>	<b style="color:#C0C0C0;">Online shopping India</b>
<p style="color:#C0C0C0;">
Imagine you are in dire need of new toy for your kid and have to get them before 
the weekend. Are you willing to take a day off from work just to
 go hunting for a pair in the crowded malls, foraging through 
 endless shops for the right designs and color options? 
 Will you wait in never-ending queues in front of the billing counter? 
 Oh, and are you willing to pay the MRP for something that you could get 
 for less? Are you willing to face so many hardships 
 just for a toy?
  Or do you want to sit in your air-conditioned office, work diligently on
   your projects, impress your seniors, and during the
    coffee break, browse through the massive selection of TOYS on Funtastic. 
    See how easy shopping on Funtastic is!
     
    Just wish for something and we will deliver.
</p>

<b style="color:#C0C0C0;">The new age of gifting - Funtastic E-Gift Vouchers</b>
<p style="color:#C0C0C0;">
Your relatives children's birthday and you don't know what you should get them.
 You're not sure if they like learning toys or puzzles.
  We understand that people often find themselves in such situations, 
  and that's why we have Funtastic E-Gift Vouchers. 
  Instead of getting a gift of your choice and finding out 
  later that they already had it, or just didn't like it as 
  much as you thought, you could just give them these vouchers
   that they can redeem on our site.
    That way, they will be able to buy exactly what they need.
</p>
	</h6>
	</div>
	
</div>


</body>
</html>