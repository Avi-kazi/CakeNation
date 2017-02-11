<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap.css' type="text/css" media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap-responsive.css' type="text/css" media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/style.css' type="text/css" media="screen">

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="resources/js/superfish.js"></script>

<script type="text/javascript" src="resources/js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="resources/js/cform.js"></script>

<script>
$(document).ready(function() {
	//





}); //
$(window).load(function() {
	//

}); //
</script>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<div class="top2_wrapper">
<div class="container">
<div class="row">
<div class="span12">

<div class="top2 clearfix">

</div>
</div>
</div>
</div>
</div>




<div class="h1_wrapper">
<div class="">
<div class="">
<div class="clearfix">
<div class="h1_inner">
<h1>Registration</h1>
</div>
</div>
</div>
</div>
</div>
<br>
<br>
<br>

<br>
<br>
<br>


	
 
	<form:form action="${pageContext.request.contextPath}/addUser" method="post" commandName="user">
	
		<table   align="center">
			<h2 align="center">Please fill the details</h2>
			                  <caption>${successMessage }</caption> 
			<tr>
				<td><form:label path="userid">
						<springtags:message text="ID" />
					</form:label></td>

				<td><form:input path="userid" pattern=".{4,12}" required="true"
						title="id should contains 4 to 12 characters" /></td>
			</tr>
			<tr>
				<td><form:label path="name">
						<springtags:message text="User Name" />
					</form:label></td>

				<td><form:input path="name" required="true"
						title="name should not be empty" /></td>
			</tr>
			<tr>
				<td><form:label path="password">
						<springtags:message text="Password" />
					</form:label></td>

				<td><form:input path="password" type="password" pattern=".{4,15}"
						required="true"
						title="password should contains 4 to 15 characters" /></td>
			</tr>
			<tr>
				<td><form:label path="mobile">
						<springtags:message text="Mobile" />
					</form:label></td>

				<td><form:input type="tel" path="mobile" pattern="^\d{10}$" required="true"
						title="Please enter valid mobile number" /></td>
			</tr>

			<tr>
				<td><form:label path="email">
						<springtags:message text="Email" />
					</form:label></td>

				<td><form:input type="email" path="email" /></td>
			</tr>

			<tr>
				<td><form:label path="address">
						<springtags:message  text="Address" />
					</form:label></td>

				<td><form:input path="address" required="true" /></td>
			</tr>
            <tr>
				<td><form:label path="role">
						<springtags:message  text="Role" />
					</form:label></td>

				<td><form:input path="role" required="true" /></td>
			</tr>
			<tr>
                        <td><input type="submit" class="btn btn-primary" value="Submit" /></td>
                        <td> <a href="${pageContext.request.contextPath}/edit/${user.userid}" class="btn btn-primary" >Reset </a></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="loginhere">Login Here</a></td>
                    </tr>

		</table>

	</form:form>
	<%@ include file="footer.jsp"%>
</body>
</html>