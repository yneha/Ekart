<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>FUNTASTIC TOYS-Login</title>
<style >
t1{padding-left:18em;}
t2{padding-left:20em;}
</style>
</head>
<body>
<!-- <%@ include file="header.jsp" %> -->
<div class="container">
 <h3>LOGIN</h3>
<form class="form-horizontal" role="form" action="Loginservlet" method="POST">
<div class="form-group">
<label class="control-label col-sm-3" for="userid">USER ID:
</label>
<div class="col-sm-3"><input type="text" class="form-control" name="userid" placeholder="Enter your User ID" required pattern="[A-Za-z]+" title="Only Alphabets"></div>
</div>
<div class="form-group">
<label class="control-label col-sm-3" for="password">PASSWORD:
</label>
<div class="col-sm-3"><input type="password" class="form-control" name="password" placeholder="Enter your password" required ></div>
</div>

<div class="form-group">        
 <div class="col-sm-1">
 <t1><button type="submit" class="btn btn-success">SUBMIT</button></t1>
 </div>
     
<div class="col-sm-1">
      <t2>  <button type="reset" class="btn btn-danger">RESET</button></t2>
      </div></div>
      
</form> 
<img src="images\toys.jpg"/>
</div>

</body>
</html>