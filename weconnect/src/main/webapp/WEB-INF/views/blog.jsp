
    <%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<script src="<c:url value="/resources/js/angular.js"/>" type="text/javascript"></script>
<script>
var blogApp = angular.module('blogApp',[]);
blogApp.controller('getBlogs', function($scope,$http,$location)
 { 
	$scope.searchKeyword=location.search.substr(15);
	$scope.bloglist = ${blogs};
	//alert($scope.productdata);
 
 });

</script>
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
<form:form action="${pageContext.request.contextPath}/user/saveBlog" method="post" modelAttribute="blog" >

<p><form:input placeholder="Title" path="title"  type="text" required="true" class="form-control" name="title" /></p>
<p><form:textarea rows="7" placeholder="Content" path="content"  type="text" required="true" class="form-control" name="content" /></p>
<input type="hidden" name="userName" value="${pageContext.request.userPrincipal.name}"/>

<p><input type="Submit" value="Post" class="btn btn-primary active" /></p>


<input path="" type="hidden"
	name="${_csrf.parameterName}"
	value="${_csrf.token}"/>

</form:form>
</div>
</div>
</div>
<hr/> 
<div ng-controller="getBlogs" ng-app="blogApp" class="well col-lg-12">
<div class="row">
<div class="col-lg-3" style="color:#800080;font-weight:bold">Title</div>
<div class="col-lg-3" style="color:#800080;font-weight:bold">Content</div>
</div>
<div ng-repeat="blog in bloglist">
<div class="row">

<div class="col-lg-3">{{blog.title}}</div>
<div class="col-lg-3">{{blog.content}}</div>


</div>
</div>
</div>
</div>
</body>