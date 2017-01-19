<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing Address</title>
</head>
<body>
	<div class="container-fluid">
		<div class="content">
			<div class="panel panel-primary">
				<div class="panel-heading">Biiling Address</div>
				<div class="panel-body">
					<form:form class="form-horizontal" commandName="billingAddress">
					
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line1</label>
							<div class="co-sm-10">
								<form:errors path="line1" class="error"></form:errors>
								<form:input path="line1" type="text" autofocus="true"
									class="form-control" required="true" />
							</div>
						</div>



						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line2</label>
							<div class="co-sm-10">
								<form:errors path="line1" class="error"></form:errors>
								<form:input path="line1" type="text" autofocus="true"
									class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="" class="control-label col-sm-2">City</label>
							<div class="co-sm-10">
								<form:errors path="city" class="error"></form:errors>
								<form:input path="city" type="text" autofocus="true"
									class="form-control" required="true" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">State</label>
							<div class="co-sm-10">
								<form:errors path="state" class="error"></form:errors>
								<form:input path="state" type="text" autofocus="true"
									class="form-control" required="true" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Country</label>
							<div class="co-sm-10">
								<form:errors path="country" class="error"></form:errors>
								<form:input path="country" type="text" autofocus="true"
									class="form-control" required="true" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Zip Code</label>
							<div class="co-sm-10">
								<form:errors path="zipcode" class="error"></form:errors>
								<form:input path="zipcode" type="text" pattern="^[1-9][0-9]{5}$"
									title="Enter ZipCode" class="form-control" required="true" />
							</div>
						</div>
						<div class="col-md-offset-3">
							<input type="submit" name="_eventId_submitBillingAddress"
								class="btn btn-md btn-success" value="Save"> <input
								type="submit" name="_eventId_cancel"
								class="btn btn-md btn-danger" value="Cancel">

						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>