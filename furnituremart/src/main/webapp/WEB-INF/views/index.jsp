<%@ taglib prefix="u" 
       uri="http://www.springframework.org/tags" %>
<body>
<%@include file="header.jsp" %>

<hr/>
<div class="container">
<div class="row">
	<div class="col-md-3 col-sm-3">
	Bootsnipp is an element gallery for web designers and web developers created by Maks, anybody using Bootstrap will find this website essential in their craft.
	</div>
	 
	<div class="col-md-2 col-sm-2">
		<p><a href="allproducts?searchKeyword=bedroom"><img src="<u:url value="/resources/images/bedroom.jpg" />" class="img-circle" alt=" "/></p>
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
</html>