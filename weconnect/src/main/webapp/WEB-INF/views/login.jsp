<body>
<%@include file="header.jsp" %>

<div class="container">
<div class="well col-lg-4">
<div class="row">
<div class="h4 pull-left col-lg-8">
Sign Up
</div>
</div>
<div class="row">
<div  class="h5 pull-left col-lg-8">


<form:form action="registeruser" method="post" modelAttribute="user" >
<t:if test="${not empty error}">
<div class="error h5" style="color:ff0000">${error}</div>
</t:if>
<t:if test="${param.logout != null}">
                                <div class="alert alert-success col-lg-12">
                                    <p>You have been logged out successfully.</p>
                                </div>
</t:if>
<p><form:input placeholder="Enter User Name" path="userName"  type="text" required="true" class="form-control" name="username" /></p>
<p><form:input placeholder="Enter EMail" path="email"  type="text" required="true" class="form-control" name="username" /></p>
<p><form:input placeholder="Enter Contact Number" path="phone" type="text" required="true" class="form-control" name="username" /></p>
<p><form:password placeholder="Enter Password" path="password"   required="true" class="form-control" name="password" /></p>

<p><input type="Submit" value="Sign Up" class="btn btn-primary active" /></p>


<input path="" type="hidden"
	name="${_csrf.parameterName}"
	value="${_csrf.token}"/>

</form:form>

</div>


</div>
</div>
</div>

</body>
