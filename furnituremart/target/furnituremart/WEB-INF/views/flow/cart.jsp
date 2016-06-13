<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<head>
<script src="<c:url value="/resources/js/jquery-2.2.4.min.js"/>"></script>
<script src="<c:url value="/resources/js/angular.js"/>"></script>

<script> 
		var myApp = angular.module('myApp',[]);
	 
		myApp.controller('getData', function($scope)
		 { 
			 
			$scope.cart = ${cartList};
			$scope.cartId=${cartId};
		 
		 });
		
		 
	
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
<body  ng-app="myApp" ng-controller="getData">
<%@include file="/WEB-INF/views/header.jsp" %>

<div class="container">


 
	<div class="panel-heading">
		<div class="panel-title text-center">
	    	<div  class="title h2 col-sm-6 col-md-6 col-lg-9">My Cart</div>
	    	 
	        
        </div>
    </div> 
	<div class="row text-center"><!-- cart grid -->
		 
			<div class="container col-lg-9" align="center" >
  				<table style="width : auto !important" class="h5 table table-responsive table-bordered table-striped">
   					<tr>
        		<!-- 		<th>Group Name</th> -->
        				<th>Cart ID</th>
        				<th>Product Name</th>
        				<th>Product Price (Rs.)</th>
<!-- 				        <th>Product ID</th> -->
				        <th>Quantity</th>
				        <th>Product Preview</th>
				        <th></th>
    				</tr>
    				<tr ng-repeat="group in cart | filter:searchKeyword	">
    					
         		<!-- 	<td>{{group.groupName}}--> 
      					<td>{{group.cartId}}</td>
      					<td>{{group.name}}</td> 
				  		<td>{{group.price}}</td> 
<!-- 				      	<td>{{group.productId}}</td>  -->
				      	<td>{{group.qty}}</td>
				      	<td><img style="width:30px;height:30px" src="<c:url value='resources/images/{{group.productId}}.jpg' />"  alt="Img Not Found" /> </td>
				      	<td>
				      	  <sec:authorize access="hasRole('ROLE_USER')">
				      	<a href="viewproductdetails--{{group.cartId}}--product">View Details</a> | <a href="editproduct--{{group.cartId}}--product">Edit</a> | <a href="deletecart--{{group.cartId}}--cart">Delete</a>
				      	</sec:authorize>
				      	
				     
				    </tr>
				</table>
			</div>
		 
	</div>
	<hr />
	<div class="container">
	<div class="row">
	<div class="col-lg-3">


	<form:form   action="collectbillinginfo?cartId=${cartId}" >
	 
	 
<!-- 		<input type="hidden" id="cart" name="cart" value=${cart} /> -->
	
	<input type="submit" value="Check Out" />
	</form:form>
	
	</div>
	</div>
	</div>
</div>
</div>
</body>
