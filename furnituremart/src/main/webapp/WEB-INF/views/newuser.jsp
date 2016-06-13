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


<form:form action="registeruser" method="post" commandName="cartuser" >
<t:if test="${not empty error}">
<div class="error h5" style="color:ff0000">${error}</div>
</t:if>
 
<p>UserName : <form:input path="userName"   class="form-control"   /> <form:errors cssStyle="color:ff0000" path="userName"  ></form:errors></p>
<p>Password : <form:password path="password"   class="form-control"   /> <form:errors cssStyle="color:ff0000" path="password"  ></form:errors></p>
<p>Confirm Password : <input  type="password" required class="form-control"   /></p>

<p><input type="Submit" value="Register" /></p>


<input path="" type="hidden"
	name="${_csrf.parameterName}"
	value="${_csrf.token}"/>

</form:form>

</div>


</div>

</div>

</body>
</html>
