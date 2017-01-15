<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	Please login with your credentials
	<br>
	 ${errorMessage }
	  
	
	<spring:form action="loginhere" method="POST">
		<table>
			<tr>
				<td><spring:label path="userid"><strong><springtags:message text="UserID"></springtags:message></strong></spring:label></td>
         	<td><spring:input path="userid" required="true" /></td>
			</tr>

			<tr>
				<td><spring:label path="password"><strong><springtags:message text="Password"></springtags:message></strong></spring:label></td>
         	<td><spring:password path="password" required="true" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>

		</table>



	</spring:form>

</body>
</html>