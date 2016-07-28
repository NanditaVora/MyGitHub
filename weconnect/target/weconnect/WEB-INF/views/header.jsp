<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" session="true" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
 
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" />

<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet" />


<%-- <script type="text/javascript" src="<c:url value="/resources/js/npm.js"/>"> --%>
<!-- </script> -->

</head>
<body>

<div class="container">
<div class="row" align="center">
<h2>weConnect </h2>
</div>
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">  
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
         
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
         
       <li><a href="${pageContext.request.contextPath}/user/startChat">Chat</a></li>
      <li> <a href="${pageContext.request.contextPath}/user/startBlog">Blog</a></li>
      <li><a href="${pageContext.request.contextPath}/user/discuss">Discussion Forum</a></li>
  		<li  class="dropdown">
  		 <a href="#" data-toggle="dropdown" class="dropdown-toggle">More <b class="caret"></b></a>
  <ul class="dropdown-menu">
    <li><a href="toAboutUs">About Us</a></li>
    <li><a href="toContactUs">Contact Us</a></li>
  </ul>
  </li>
  </ul>
  		<ul class="nav navbar-nav">
<!--   	<li><h3>weConnect </h3></li> -->
      <sec:authorize access="hasRole('ROLE_ADMIN')">
      	<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
        <li><a href="<c:url value="/admin" />">Admin</a></li> 
         <li><a href="<c:url value="/perform_logout" />">Logout</a></li> 
     <!--   <li><a href="javascript:formSubmit()">Logout</a></li>-->
		
 
      </sec:authorize>
      <sec:authorize access="hasRole('ROLE_USER')">
      	<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
        
		<li><a href="<c:url value="/user/viewprofile?userName=${pageContext.request.userPrincipal.name}" />">Profile</a></li>  
<li><a href="<c:url value="/perform_logout" />">Logout</a></li>	 
      </sec:authorize>
   
        <t:if test="${pageContext.request.userPrincipal.name == null}">
<!--         	<li> -->
<!--         		<div class="col-sm-12">  -->
<%--         			<form role="search" class="navbar-form" > --%>
<!--         				<div class="input-group"> -->
<!--             				<input type="text" style="height:28px;" class="form-control" placeholder="Sign In" name="username"> -->
<!--             					<div class="input-group-btn"> -->
<!--                 					<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-log-in"></i></button> -->
<!--             					</div> -->
<!--         				</div> -->
<%--        				</form> --%>
<!--      			</div> -->
<!--      		</li>  -->
     		<li>
     		<div class="input-group">
     		<form:form role="form" action="perform_login" class="navbar-form" >
     		<input type="text" name="username" class="control" placeholder="Login" />
            <input type="password" name="password" class="control" placeholder="Password" />
            <input type="submit" value="Login" class="btn-small"/>
           
            </form:form>
             </div>
     	<li style="margin-top: 0">	<a href="${pageContext.request.contextPath}/register">New ??? Register</a></li>
<%--      		<li><a href="<c:url value="/loginpage" />">Login</a></li> --%>
                           
                           
                        </t:if>
   		
   
      </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
 
</nav>
<div class="row">
<div class="col-lg-1">
<a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/images/icon.jpg"  /></a>
</div>
<div class="col-lg-2">
<a href="${pageContext.request.contextPath}"><h2><span style="color:#800080">weConnect</span></h2></a>
</div>

</div>
</div>
<hr size="300"/>

<script src="<c:url value="resources/js/jquery-2.2.4.min.js" />" ></script>



<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>" >
</script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.js"/>" >
</script>
</body>
</html>
