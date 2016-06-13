<body>
<%@include file="header.jsp" %>
<div class="container">
<div class="row">
<div class="h4 pull-left col-lg-3">
Enter Login Credentials
</div>
</div>
<div class="row">
<div  class="h4 pull-left col-lg-4">


<form:form action="perform_login" method="post" >
<t:if test="${not empty error}">
<div class="error h5" style="color:ff0000">${error}</div>
</t:if>
<t:if test="${param.logout != null}">
                                <div class="alert alert-success col-lg-12">
                                    <p>You have been logged out successfully.</p>
                                </div>
</t:if>
<p>UserName : <input   type="text" required class="form-control" name="username" /></p>
<p>Password : <input  type="password" required class="form-control" name="password" /></p>

<p><input type="Submit" value="Login" /></p>


<input path="" type="hidden"
	name="${_csrf.parameterName}"
	value="${_csrf.token}"/>

</form:form>

</div>


</div>

</div>

</body>
</html>
