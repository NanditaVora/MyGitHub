<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<body ng-app="chatApp">
<script src="${pageContext.request.contextPath}/resources/js/bower/bower_components/sockjs/sockjs.js" type="text/javascript"></script>

<script  src="${pageContext.request.contextPath}/resources/js/bower/bower_components/stomp-websocket/lib/stomp.min.js" type="text/javascript"></script>

<script  src="${pageContext.request.contextPath}/resources/js/bower/bower_components/angular/angular.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/js/bower/bower_components/lodash/dist/lodash.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/js/app.js" type="text/javascript" ></script>

<script src="${pageContext.request.contextPath}/resources/js/controllers.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/js/services.js" type="text/javascript"></script>
<div class="container">
<div class="well col-lg-12">
<div class="row">
<div style="color:red" class="h3 pull-left col-lg-8">
CHAT with your friends here....
</div>
</div>
<div class="row">
<div  class="h5 pull-left col-lg-12">

<div ng-controller="ChatCtrl" >
	<form ng-submit="addMessage()" name="messageForm">
		<input type="text" placeholder="Compose new message..." ng-model="message" class="col-lg-6" />
		<div class="info">
			&nbsp; &nbsp;(<span class="count" ng-bind="max - message.length" ng-class="{danger:message.length>max}">  </span> max. characters)
<!-- 			<input type="submit" ng-disabled="message.length>max || message.length===0" value="Send"/> -->
		<div class="row col-lg-1 pull-left">	<button ng-disabled="message.length > max || message.length === 0">Send</button></div>
		</div>
	</form>
	<hr/>
	<p ng-repeat="message in messages" class="message">
		<span>{{message.username}} : </span>
		<span ng-class="{self:message.self}">{{message.message}}</span>
	</p>
</div>

</div>
</div>
</div>
</div>
</body>
 