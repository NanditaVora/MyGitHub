<%@ taglib prefix="u" 
       uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<body>
<%@include file="header.jsp" %>
 
	<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Contact Us for Suggestions & Feedback</h1>
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
		<p><a href="allproducts?searchKeyword=bedroom"><img src="<u:url value="resources/images/bedroom.jpg" />" class="img-circle" alt=" "/></p>
		Bedroom Set</a>
	</div>
	<div class="col-md-2 col-sm-2">
		<p><a href="allproducts?searchKeyword=kitchen"><img src="<u:url value="/resources/images/kitchen.jpg" />" class="img-circle" /></p>
		Dining</a>
	</div>
	<div class="col-md-2 col-sm-2">
		<p><a href="allproducts?searchKeyword=living"><img src="<u:url value="/resources/images/livingroom.jpg" />" class="img-circle"/></p>
		Living Room</a>
	</div>
	 
	<div class="col-md-3 col-sm-3">
		<span class="pull-right">Bootsnipp is an element gallery for web designers and web developers created by Maks, anybody using Bootstrap will find this website essential in their craft.</span>
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