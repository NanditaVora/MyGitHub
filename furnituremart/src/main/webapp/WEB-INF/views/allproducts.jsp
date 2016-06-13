<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<head>
<script src="<c:url value="/resources/js/jquery-2.2.4.min.js"/>"></script>
<script src="<c:url value="/resources/js/angular.min.js"/>"></script>
<script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			$scope.searchKeyword=location.search.substr(15);
			$scope.productdata = ${productlist};
			//alert($scope.productdata);
		 
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
<body ng-app="myApp" ng-controller="getData">
<%@include file="header.jsp" %>
<div class="container">


 
	<div class="panel-heading">
		<div class="panel-title text-center">
	    	<div  class="title h2 col-sm-6 col-md-6 col-lg-9">Product Catalog</div>
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
    </div> 
	<div class="row text-center"><!-- products grid -->
		 
			<div class="container col-lg-9" align="center" >
  				<table style="width : auto !important" class="h5 table table-responsive table-bordered table-striped">
   					<tr>
        		<!-- 		<th>Group Name</th> -->
        				<th>Product Name</th>
        		<!-- 	<th>Product Price (Rs.)</th> -->
				        <th>Product Description</th>
				        <th>Product Preview	</th>
				        <th></th>
    				</tr>
    				<tr ng-repeat="group in productdata | filter:searchKeyword	">
    					
         		<!-- 	<td>{{group.groupName}}--> 
      					<td>{{group.name}}</td> 
				<!--   	<td>{{group.price}}</td>--> 
				      	<td>{{group.description}}</td> 
				      
				      	<td><img style="width:30px;height:30px" src="${pageContext.request.contextPath}/resources/images/{{group.img}}"  alt="Img Not Found" /> </td>
				      	<td>
				      	  <sec:authorize access="hasRole('ROLE_ADMIN')">
				      	<a href="viewproductdetails--{{group.productID}}--product">View Details</a> | <a href="editproduct--{{group.productID}}--product">Edit</a> | <a href="deleteproduct--{{group.productID}}--product">Delete</a>
				      	</sec:authorize>
				      	
				      	<sec:authorize access="hasRole('ROLE_USER')">
				      	<a href="viewproductdetails--{{group.productID}}--product">View Details</a>
				      	</sec:authorize>
				      	 <t:if test="${pageContext.request.userPrincipal.name == null}">
				      	 <a href="viewproductdetails--{{group.productID}}--product">View Details</a>
				      	 </t:if>
				      	 </td>
				    </tr>
				</table>
			</div>
		 
	</div>
	<hr />
</div>
</div>

<!-- <div class="container"> -->
<!-- <div class="row"> -->
<!-- 	<div class="col-md-3 col-sm-3"> -->
<!-- 	Bootsnipp is an element gallery for web designers and web developers created by Maks, anybody using Bootstrap will find this website essential in their craft. -->
<!-- 	</div> -->
	 
<!-- 	<div class="col-md-2 col-sm-2"> -->
<%-- 		<p><a href="allproducts?searchKeyword=bedroom"><img src="<u:url value="/resources/images/bedroom.jpg" />" class="img-circle" alt=" "/></p> --%>
<!-- 		Bedroom Set</a> -->
<!-- 	</div> -->
<!-- 	<div class="col-md-2 col-sm-2"> -->
<%-- 		<p><a href="allproducts?searchKeyword=kitchen"><img src="<u:url value="/resources/images/kitchen.jpg" />" class="img-circle" /></p> --%>
<!-- 		Dining</a> -->
<!-- 	</div> -->
<!-- 	<div class="col-md-2 col-sm-2"> -->
<%-- 		<p><a href="allproducts?searchKeyword=living"><img src="<u:url value="/resources/images/livingroom.jpg" />" class="img-circle"/></p> --%>
<!-- 		Living Room</a> -->
<!-- 	</div> -->
	 
<!-- 	<div class="col-md-3 col-sm-3"> -->
<!-- 		<span class="pull-right">Bootsnipp is an element gallery for web designers and web developers created by Maks, anybody using Bootstrap will find this website essential in their craft.</span> -->
<!-- 	</div> -->
<!-- </div> -->
<!--  </div> -->

 <div class="container">
<footer class="row">
(c) All Rights Reserved.
</footer>
</div>
</body>
</html>
