<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp" %>
Confirming Your Order
 
<form:form  method="post">
<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
<input type="submit" name="_eventId_submit" value="Confirm" />
</form:form>

</body>
</html>