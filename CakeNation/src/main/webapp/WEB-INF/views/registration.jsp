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
</head>
<body>

	<h2>Please fill the details</h2>

	<form:form action="/register" method="post" commandName="user">
		<table>
			<tr>
				<td><form:label path="userid">
						<springtags:message text="ID" />
					</form:label></td>

				<td><form:input path="userid" pattern=".{4,7}" required="true"
						title="id should contains 4 to 7 characters" /></td>
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

				<td><form:input path="password" pattern=".{4,15}"
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

				<td><form:input path="address" required="true" /></td>
			</tr>
			<tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="home">Login Here</a></td>
                    </tr>

		</table>

	</form:form>
</body>
</html>