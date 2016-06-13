<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<div class="container">
 
	<form:form role="form"  action="updateproduct" commandName="product" method="post" >
	 	<form:hidden path="productId"/>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<label for="name" class="cols-sm-12 control-label">Product Name</label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="name" type="text" class="form-control cols-sm-12 cols-lg-3"  placeholder="Product Name"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<label for="name" class="cols-sm-12 control-label">Group Name</label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="groupName"  class="form-control cols-sm-12 cols-lg-3"  placeholder="Product Group Name"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<label for="name" class="cols-sm-12 control-label">Description</label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="description" class="form-control cols-sm-12 cols-lg-3"  placeholder="Product Description"/>
					</div>
				</div>
			</div>
	 	</div>
<!-- 	 	<div class="row row-height"> -->
<!-- 			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height">  -->
<!-- 				<div class="form-group "> -->
<!-- 					<label for="name" class="cols-sm-12 control-label">Image</label> -->
<!-- 					 <div class="input-group "> -->
<!-- 							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span> -->
<%-- 							<form:input path="img"  class="form-control cols-sm-12 cols-lg-3"   placeholder="Product Image"/> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 	 	</div> -->
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<label for="name" class="cols-sm-12 control-label">Price</label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="price"  class="form-control cols-sm-12 cols-lg-3"  placeholder="Product Price"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<label for="name" class="cols-sm-12 control-label">Quantity</label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="qty"  class="form-control cols-sm-12 cols-lg-3"   placeholder="Product Quantity"/>
					</div>
				</div>
			</div>
	 	</div>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					 
					 <div class="input-group ">
							
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button"></input>
					</div>
				</div>
			</div>
	 	</div>
	</form:form>

</div>
</div>
</body>
</html>
