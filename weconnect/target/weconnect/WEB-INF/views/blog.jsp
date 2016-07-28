
<body>
<%@include file="header.jsp" %>
<div class="container">
<div class="well col-lg-12">
<div class="row">
<div style="color:blue" class="h3 pull-left col-lg-8">
Blog  here....
</div>

</div>
<div class="row">
<div  class="h5 pull-left col-lg-12">
<form:form action="registeruser" method="post" modelAttribute="blog" >

<p><form:input placeholder="Title" path="title"  type="text" required="true" class="form-control" name="title" /></p>
<p><form:textarea rows="10" placeholder="Content" path="content"  type="text" required="true" class="form-control" name="content" /></p>
<input type="hidden" name="userName" value="${pageContext.request.userPrincipal.name}"/>
<
<p><input type="Submit" value="Post" class="btn btn-primary active" /></p>


<input path="" type="hidden"
	name="${_csrf.parameterName}"
	value="${_csrf.token}"/>

</form:form>
</div>
</div>
</div>
<hr/> 
</div>
</body>