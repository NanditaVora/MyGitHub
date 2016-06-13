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
		<p><a href="allproducts"><img src="<u:url value="/resources/images/add.png" />" class="img-circle" alt=" "/></p>
		ADD Product</a>
	</div>
	<div class="col-md-2 col-sm-2">
		<p><a href="allproducts"><img src="<u:url value="/resources/images/edit.png" />" class="img-circle" /></p>
		EDIT Product</a>
	</div>
	<div class="col-md-2 col-sm-2">
		<p><a href="allproducts"><img src="<u:url value="/resources/images/delete.png" />" class="img-circle"/></p>
		DELETE Product</a>
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