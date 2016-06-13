<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/custom.css" rel="stylesheet" />

<script src="resources/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js" >
</script>

<script type="text/javascript" src="resources/js/bootstrap.min.js">
</script>

<script type="text/javascript" src="resources/js/npm.js">
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
<div class="container">
<div id="the-slider" class="carousel slide" data-ride="carousel">

<ol class="carousel-indicators">
<li data-target="#the-slider" data-slide-to="0" class="active"></li>
<li data-target="#the-slider" data-slide-to="1" ></li>
<li data-target="#the-slider" data-slide-to="2" ></li>
</ol>

	<div class="carousel-inner">
	
		<div class="item active">
			<img height="50px" src="resources/images/bedroom.jpg" class="img-responsive" alt="" >
			 
		</div>
	
		<div class="item">
			<img height="50px" src="resources/images/livingroom.jpg" class="img-responsive" alt="" >
				 
		</div>
	
		<div class="item">
			<img height="50px" src="resources/images/kitchen.jpg" class="img-responsive" alt=""   >
		</div>
	
	</div>

	<a class="left carousel-control"  href="#the-slider" role="button" data-slide="prev" >
		<span class="glyphicon glyphicon-chevron-left"></span>
	</a>
	<a class="right carousel-control" href="#the-slider" role="button" data-slide="next"  >
		<span class="glyphicon glyphicon-chevron-right"></span>
	</a>
</div>
</div>
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
         
       <li><a   href="/furnituremart">Home</a></li>
      <li> <a  href="aboutus">About Us</a></li>
      <li><a href="contactus">Contact Us</a></li>
       <li> <a  href="allproducts">All Products</a></li>
        <li> <a  href="addproduct">Add Product</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      
        <li><a href="login">Login</a></li>
       <li><a href="signup">Sign Up</a></li>
     
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
 
</div>
</div>
</body>
</html>
