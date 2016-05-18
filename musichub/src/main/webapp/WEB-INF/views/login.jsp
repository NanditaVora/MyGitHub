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

	<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<script type="text/javascript" src="resources/js/bootstrap.js" >
</script>

<script type="text/javascript" src="resources/js/bootstrap.min.js" >
</script>

<script type="text/javascript" src="resources/js/npm.js" >
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
	               <div class="panel-title">
	               		<h1 class="title">Sign In</h1>
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
							<label for="password" class="cols-sm-12 control-label">Your Password</label>
							 
								<div class="input-group">
									<span class="input-group-addon cols-sm-12"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control cols-sm-12" name="password" id="password"  placeholder="Enter your Password"/>
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
<footer class="row">
(c) All Rights Reserved.
</footer>
</div>
</body>
</html>