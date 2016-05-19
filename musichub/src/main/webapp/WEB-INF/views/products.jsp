<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
       uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="u" 
       uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="fn" 
       uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<script src="<u:url value="resources/js/angular.min.js" />"></script>
<script src="<u:url value="resources/js/angular.js"/>"></script>
<script src="<u:url value="resources/js/angular-route.js"/>"></script>
<script src="<u:url value="resources/js/angular-resource.js"/>"></script>
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

<script  type="text/javascript" src="<u:url value="resources/datafiles/products.json"/>"></script>
<script>
var myApp = angular.module('myApp',[]);
 

myApp.controller('getData', function($scope,$http,$location)
 { 
	$scope.searchKeyword=location.search.substr(15);
	//alert($scope.searchKeyword);
	$http.get("resources/datafiles/products.json")
    .then(function(response) {
        //First function handles success
        
        $scope.productdata = response.data.productdata;
     //   alert($scope.productdata);
    }, function(response) {
        //Second function handles error
        $scope.content = "Something went wrong";
        //alert('failure');
    });
});
 

 
</script>

</head>
<body  ng-app="myApp" ng-controller="getData">
 
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
								    <input type="text" ng-model="searchKeyword" class="form-control cols-sm-12 cols-lg-9" name="searchKeyword" id="searchKeyword" />
									 
								</div>
								 
							 
						</div>
						</div>
					 </div>
					 </form>
		</div>
	</div>
	<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Product Catalog</h1>
	               		<hr />
	               	</div>
	            </div> 
	<div class="row"><!-- products grid -->
	<div>
<div class="container" >
   
<table class="table table-responsive table-bordered table-striped">
    <tr>
        <th>Group Name</th>
        <th>Product Name</th>
        <th>Product Price (Rs.)</th>
        <th>Product Description</th>
        <th>Product Preview	</th>
    </tr>
    <tr ng-repeat="group in productdata | filter:searchKeyword	">
        <td>{{group.groupname}}</td>
        <td>{{group.name}}</td>
        <td>{{group.price}}</td>
        <td>{{group.description}}</td>
        <td><img style="width:50px;height:50px" src="{{group.img}}" />
    </tr>
</table>
</div>
</div>
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