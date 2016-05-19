<%@ taglib prefix="u" 
       uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

	<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
 

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
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Suggestion Box</h1>
	               		<hr />
	               	</div>
	            </div> 
	             
	            
				<div class="container">
				
					<form role="form" method="post" >
					 	<div class="row">
						<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6"> 
						<div class="form-group ">
							<label for="name" class="cols-sm-12 control-label">Your Name</label>
							 
								<div class="input-group ">
									<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control cols-sm-12 cols-lg-3" name="name" id="name"  placeholder="Enter your Name"/>
								</div>
							 
						</div>
						</div>
					 </div>
					 <div class="row">
						<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6"> 
						<div class="form-group">
							<label for="email" class="cols-sm-12 control-label">Your Email</label>
							 
								<div class="input-group">
									<span class="input-group-addon cols-sm-12"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control cols-sm-12" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							 
						</div>
						</div>
						 </div>
						  <div class="row">
						<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 ">  
						<div class="form-group">
							<label for="suggestion" class="cols-sm-12 control-label">Suggestion</label>
							 
								<div class="input-group">
									<span class="input-group-addon cols-sm-12"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<textarea rows="5" cols="60"  class="form-control cols-sm-12" name="suggestion" id="suggestion" ></textarea>
								</div>
						 
						</div>
						</div>
						</div>
						<div class="row">
						<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 ">  
						<div class="form-group ">
							<button type="button" class="btn btn-primary btn-lg btn-block login-button">Submit</button>
						 
						</div> 
						</div>
						</div> 
					</form>
				 </div>
				  
				 </div>
			</div>
		 
 
<hr/>
<div class="container">
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
<div class="container">
<footer class="row">
(c) All Rights Reserved.
</footer>
</div>
</body>
</html>