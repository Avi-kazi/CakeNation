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
	
	  <spring:form action = "${pageContext.request.contextPath}/loginhere" method="post">
	<table   align="center">
			<h2 align="center">Please Login with valid credencials</h2>
                
                <tbody>
                    <tr>
                        <td>User ID</td>
                        <td><input type="text" name="userid" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /><input type="submit" value="Login" class="btn btn-primary"/></td>
                        
                    </tr>
                   <!--  <tr>
                       <td colspan="2">Yet Not Registered!! <a href="registerHere">Register Here</a></td>
                    </tr> -->
                </tbody>
            </table>
	              

	</spring:form>

</body>
</html>