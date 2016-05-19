<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="u" 
       uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="<u:url value="resources/css/bootstrap-theme.css"/>" />
<link rel="stylesheet" href="<u:url value="resources/css/bootstrap-theme.css.map" />" />
<link rel="stylesheet" href="<u:url value="resources/css/bootstrap-theme.min.css" />" />
<link rel="stylesheet" href="<u:url value="resources/css/bootstrap-theme.min.css.map" />" />
<link rel="stylesheet" href="<u:url value="resources/css/bootstrap.css" />" />
<link rel="stylesheet" href="<u:url value="resources/css/bootstrap.css.map" />" />
<link rel="stylesheet" href="<u:url value="resources/css/bootstrap.min.css" />" />
<link rel="stylesheet" href="<u:url value="resources/css/bootstrap.min.css.map" />" />
<link rel="stylesheet" href="<u:url value="resources/css/custom.css" />" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<script type="text/javascript" src="<u:url value="resources/js/bootstrap.js" />">
</script>

<script type="text/javascript" src="<u:url value="resources/js/bootstrap.min.js" />">
</script>

<script type="text/javascript" src="<u:url value="resources/js/npm.js"/>">
</script>

<script type="text/javascript">
	$(window).scroll(function() {
	  if ($(document).scrollTop() > 50) {
	    $('nav').addClass('shrink');
	  } else {
	    $('nav').removeClass('shrink');
	  }
	});
</script>

</head>
<body>

<div class="container">
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
         
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
         
       <li><a   href="index.html">Home</a></li>
      <li> <a  href="aboutus.html">About Us</a></li>
       <li> <a  href="products.html">All Products</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      
        <li><a href="login.html">Login</a></li>
       <li><a href="signup.html">Sign Up</a></li>
       <li><a href="contactus.html">Contact Us</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>

<div class="container">

 

<div id="the-slider" class="carousel slide" data-ride="carousel">

<ol class="carousel-indicators">
<li data-target="#the-slider" data-slide-to="0" class="active"></li>
<li data-target="#the-slider" data-slide-to="1" ></li>
<li data-target="#the-slider" data-slide-to="2" ></li>
</ol>

	<div class="carousel-inner">
	
		<div class="item active">
			<img height="250px" src="resources/images/guitar.jpg" class="img-responsive" alt="" >
			 
		</div>
	
		<div class="item">
			<img height="250px" src="resources/images/piano.jpg" class="img-responsive" alt="" >
				 
		</div>
	
		<div class="item">
			<img height="250px" src="resources/images/accessories.jpg" class="img-responsive" alt=""   >
		</div>
	
	</div>

	<a class="left carousel-control"  href="#the-slider" role="button" data-slide="prev" >
		<span class="glyphicon glyphicon-chevron-left"></span>
	</a>
	<a class="right carousel-control" href="#the-slider" role="button" data-slide="next"  >
		<span class="glyphicon glyphicon-chevron-right"></span>
	</a>
</div>

<hr/>
<div class="row">
	<div class="col-md-3 col-sm-3">
	Bootsnipp is an element gallery for web designers and web developers created by Maks, anybody using Bootstrap will find this website essential in their craft.
	</div>
	 
	<div class="col-md-2 col-sm-2">
		<p><a href="products.html?searchKeyword=guitar"><img src="<u:url value="resources/images/guitar.jpg"/>" class="img-circle" alt=" "/></p>
		Guitar</a>
	</div>
	<div class="col-md-2 col-sm-2">
		<p><a href="products.html?searchKeyword=accessories"><img src="<u:url value="resources/images/accessories.jpg"/>" class="img-circle" /></p>
		Accessories</a>
	</div>
	<div class="col-md-2 col-sm-2">
		<p><a href="products.html?searchKeyword=piano"><img src="<u:url value="resources/images/piano.jpg"/>" class="img-circle"/></p>
		Piano</a>
	</div>
	 
	<div class="col-md-3 col-sm-3">
		<span class="pull-right">Bootsnipp is an element gallery for web designers and web developers created by Maks, anybody using Bootstrap will find this website essential in their craft.</span>
	</div>
</div>
 
 <hr/>
<footer class="row">
(c) All Rights Reserved.
</footer>

</div>
</body>
</html>