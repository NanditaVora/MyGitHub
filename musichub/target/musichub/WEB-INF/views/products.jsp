<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap-theme.css" />
<link rel="stylesheet" href="resources/css/bootstrap-theme.css.map" />
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css.map" />
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/bootstrap.css.map" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css.map" />
<link rel="stylesheet" href="resources/css/custom.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<script type="text/javascript" src="resources/js/bootstrap.js" >
</script>

<script type="text/javascript" src="resources/js/bootstrap.min.js" >
</script>

<!-- <script type="text/javascript" src="resources/js/npm.js" >
</script>

-->


<script type="text/javascript">
	$(window).scroll(function() {
	  if ($(document).scrollTop() > 50) {
	    $('nav').addClass('shrink');
	  } else {
	    $('nav').removeClass('shrink');
	  }
	});
</script>

<script type="text/javascript">

var products = {"groupname" : [{ 
	 "guitars" : [
	             {"productid" : "P001","name" : "electronic guitar", "price" : "5500" , "qty" : "5", "description" : "guitars for professional","img":"eguitar.jpg" }, 
				 {"productid" : "P002","name" : "wooden frame guitar", "price" : "4500" , "qty" : "4", "description" : "guitars with bass effects","img":"woodguitar.jpg"  }
				],
	 "piano" : [
	             {"productid" : "P003","name" : "baby piano", "price" : "10000" , "qty" : "3", "description" : "piano for teenagers","img":"babypiano.jpg"  }, 
				 {"productid" : "P004","name" : "dolby piano", "price" : "24500" , "qty" : "6", "description" : "piano with dolby effect","img":"dolbypiano.jpg"  }
				],
	 "accessories" : [
		         {"productid" : "P003","name" : "drum sticks", "price" : "1000" , "qty" : "3", "description" : "drum sticks for drummer","img":"drumsticks.jpg"  }, 
				 {"productid" : "P004","name" : "cordless mic", "price" : "24500" , "qty" : "6", "description" : "mic for karoke system","img":"mic.jpg"  }
			]
}]};
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
	<div class="container">
		<div class="row"> <!-- search box row -->
			 
			<div class="container">
				
					<form role="form" method="post" >
					 	<div class="row">
						<div class="col-xs-10 col-sm-6 col-md-6 col-lg-3 pull-right"> 
						<div class="form-group ">
							<label for="search" class="cols-sm-12 control-label">Search Products</label>
							 
								<div class="input-group ">
									<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control cols-sm-12 cols-lg-9" name="search" id="search"  placeholder="Enter Search Text"/>
								</div>
							 
						</div>
						</div>
					 </div>
					 </form>
		</div>
	</div>
	<div class="row"><!-- products grid -->
	${not empty products}
	<c:if test="${not empty products}">
	
	<c:forEach var="i" begin="1" end="10">
	<c:out value="${i}" /><br/>
	</c:forEach>
 
<c:forEach var="product" items="${products}">
	Group Name : 	${product[groupname]}
</c:forEach>
</c:if>
	</div>
	
 

<hr/>
<div class="row">
	<div class="col-md-3 col-sm-3">
		Bootsnipp is an element gallery for web designers and web developers created by Maks, anybody using Bootstrap will find this website essential in their craft.
	</div>
	 
	<div class="col-md-2 col-sm-2">
		<p><img src="resources/images/guitar.jpg" class="img-circle" alt=" "/></p>
		Guitar
	</div>
	<div class="col-md-2 col-sm-2">
		<p><img src="resources/images/accessories.jpg" class="img-circle" /></p>
		Accessories
	</div>
	<div class="col-md-2 col-sm-2">
		<p><img src="resources/images/piano.jpg" class="img-circle"/></p>
		Piano
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