<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Funtastic Toys-Registration</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var k=document.getElementById("username").value;
var urls="checkusername?key="+k;

if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4)
    {
        document.getElementById("err").innerHTML=xmlhttp.responseText;
     }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
</script>
<script>
var country_arr = new Array("Andaman and Nicobar Islands","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh",
		"Chhattisgarh","Dadra and Nagar Haveli","Daman and Diu","Delhi","Goa","Gujarat","Haryana",
		"Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Lakshadweep","Madhya Pradesh","Maharashtra",
		"Manipur",
		"Meghalaya","Mizoram","Nagaland","Orissa","Pondicherry","Punjab","Rajasthan","Sikkim","Tamil Nadu","Tripura",
		"Uttar Pradesh","Uttaranchal","West Bengal");

// States
var s_a = new Array();
s_a[0]="";
s_a[1]="Alipur|Andaman Island| Anderson Island| Arainj-Laka-Punga| Austinabad| Bamboo Flat| Barren Island| Beadonabad|Betapur| Bindraban| Bonington| Brookesabad| Cadell Point| Calicut| Chetamale| Cinque Islands|Defence Island| Digilpur| Dolyganj| Flat Island| Geinyale| Great Coco Island| Haddo| Havelock Island| Henry Lawrence Island| Herbertabad| Hobdaypur| Ilichar| Ingoie| Inteview Island| Jangli Ghat| Jhon Lawrence Island| Karen|Kartara| KYD Islannd| Landfall Island|Little Andmand| Little Coco Island| Long Island| Maimyo| Malappuram| Manglutan| Manpur| Mitha Khari| Neill Island| Nicobar Island| North Brother Island| North Passage Island |North Sentinel Island| Nothen Reef Island| Outram Island| Pahlagaon| Palalankwe|Passage Island| Phaiapong| Phoenix Island| Port Blair| Preparis Island| Protheroepur| Rangachang| Rongat| Rutland Island| Sabari| Saddle Peak| Shadipur| Smith Island| Sound Island| South Sentinel Island| Spike Island| Tarmugli Island| Taylerabad| Titaije";


s_a[2]="";
s_a[3]="";
s_a[4]="";
s_a[5]="";
s_a[6]="";
s_a[7]="";
s_a[8]="";
s_a[9]="";
s_a[10]="";
s_a[11]="";
s_a[12]="";
s_a[13]="";
s_a[14]="";
s_a[15]="";
s_a[16]="";
s_a[17]="";
s_a[18]="";
s_a[19]="";
s_a[20]="";
s_a[21]="";
s_a[22]="";
s_a[23]="";
s_a[24]="";
s_a[25]="";
s_a[26]="";
s_a[27]="";
s_a[28]="";
s_a[29]="";
s_a[30]="";
s_a[31]="chennai|madurai";
s_a[32]="";
s_a[33]="";
s_a[34]="";
s_a[35]="";
function populateStates( countryElementId, stateElementId ){
	
	var selectedCountryIndex = document.getElementById( countryElementId ).selectedIndex;

	var stateElement = document.getElementById( stateElementId );
	
	stateElement.length=0;	// Fixed by Julian Woods
	stateElement.options[0] = new Option('Select City','');
	stateElement.selectedIndex = 0;
	
	var state_arr = s_a[selectedCountryIndex].split("|");
	
	for (var i=0; i<state_arr.length; i++) {
		stateElement.options[stateElement.length] = new Option(state_arr[i],state_arr[i]);
	}
}

function populateCountries(countryElementId, stateElementId){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var countryElement = document.getElementById(countryElementId);
	countryElement.length=0;
	countryElement.options[0] = new Option('Select State','-1');
	countryElement.selectedIndex = 0;
	for (var i=0; i<country_arr.length; i++) {
		countryElement.options[countryElement.length] = new Option(country_arr[i],country_arr[i]);
	}

	// Assigned all countries. Now assign event listener for the states.

	if( stateElementId ){
		countryElement.onchange = function(){
			populateStates( countryElementId, stateElementId );
		};
	}
}
</script>
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
	<h1>${op}</h1>
<div class="container">
            <form:form commandName="userForm" action="register">
                <h2>Registration Form</h2>
<<<<<<< HEAD
              <div class="row">
=======
              
>>>>>>> 7567ab24600c129060ee33bbdf09936f85eb8bdc
                 <div class="form-group">
                    <label for="password" class="col-md-3">NAME</label>
                    <div class="col-md-4">
                        <form:input path="name"  class="form-control"/>
					<form:errors path="name" cssClass="error"/>
                    </div></div>
                </div><br><br>
                 <div class="row">
                <div class="form-group">
                    <label for="email" class="col-md-3 ">Email</label>
                    <div class="col-md-4">
                        <form:input id="username" onblur="loadXMLDoc()" class="form-control" path="email" size="30"/>
                 <span style="color:red" id="err" ></span>
                  <form:errors path="email" cssClass="error"/></div>
                </div></div>
               <br><br>
                <div class="row">
                <div class="form-group">
                    <label for="password" class="col-md-3 ">Password</label>
                    <div class="col-md-4">
                       <form:password class="form-control" path="password" size="30"/>
                   <form:errors path="password" cssClass="error"/></div></div>
                </div><br><br>
                 <div class="row">
                <div class="form-group">
                    <label for="address" class="col-md-3">Address</label>
                    <div class="col-md-4">
                        <form:input path="addr"  class="form-control"/>

                    </div>
                </div></div>
<br>               <br><br>
 <div class="row">
                <div class="form-group">
                    <label for="password" class="col-md-3">Phone Number</label>
                    <div class="col-md-4">
                        <form:input path="phno"  class="form-control" size="30"/>

                    <form:errors path="phno" cssClass="error"/></div>
                </div></div><br>
                 <div class="form-group">
               Select State   <select id="country" name ="country"></select>
Select City <select name ="state" id ="state"></select>
 <script language="javascript">
populateCountries("country", "state");
 </script>
               </div><br>
                <div class="row">
                <div class="form-group">
                    <div class="col-md-2">
               
                        <button type="submit" class="btn btn-success">REGISTER</button>
               </div>
                    <div class="col-md-1">
                    <t2><button type="reset" class="btn btn-danger">RESET</button>
                    </t2></div></div>
                </div>
            </form:form> <!-- /form -->
        </div> <!-- ./container -->

</body>
</html>