<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing Address</title>
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
<div class="top2_wrapper">
<div class="container">
<div class="row">
<div class="span12">

<div class="top2 clearfix">
	<div class="container-fluid"allign ="center">
		<div class="content"allign ="center">
			<div class="panel panel-primary" allign ="center">
				<h2 align="center">Biiling Address</h2>
				<div class="panel-body" allign ="center">
					<form:form class="form-horizontal" commandName="billingAddress">
					
						<div class="form-group"allign ="center">
							<label for="" class="control-label col-sm-2">Line1</label>
							<div class="co-sm-10">
								<form:errors path="line1" class="error"></form:errors>
								<form:input path="line1" type="text" autofocus="true"
									class="form-control" required="true" />
							</div>
						</div>

<br>

						<div class="form-group"allign ="center">
							<label for="" class="control-label col-sm-2">Line2</label>
							<div class="co-sm-10">
								<form:errors path="line1" class="error"></form:errors>
								<form:input path="line1" type="text" autofocus="true"
									class="form-control" />
							</div>
						</div>
<br>
						<div class="form-group"allign ="center">
							<label for="" class="control-label col-sm-2">City</label>
							<div class="co-sm-10">
								<form:errors path="city" class="error"></form:errors>
								<form:input path="city" type="text" autofocus="true"
									class="form-control" required="true" />
							</div>
						</div>
						<br>
						<div class="form-group"allign ="center">
							<label for="" class="control-label col-sm-2">State</label>
							<div class="co-sm-10">
								<form:errors path="state" class="error"></form:errors>
								<form:input path="state" type="text" autofocus="true"
									class="form-control" required="true" />
							</div>
						</div>
						<br>
						
						<div class="form-group"allign ="center">
							<label for="" class="control-label col-sm-2">Country</label>
							<div class="co-sm-10">
								<form:errors path="country" class="error"></form:errors>
								<form:input path="country" type="text" autofocus="true"
									class="form-control" required="true" />
							</div>
						</div>
						<br>
						<div class="form-group"allign ="center">
							<label for="" class="control-label col-sm-2">Zip Code</label>
							<div class="co-sm-10">
								<form:errors path="zipcode" class="error"></form:errors>
								<form:input path="zipcode" type="text" pattern="^[1-9][0-9]{5}$"
									title="Enter ZipCode" class="form-control" required="true" />
							</div>
						</div>
						<br>
						
						<div class="col-md-offset-3"allign ="center">
							<input type="submit" name="_eventId_submitBillingAddress"
								class="btn btn-md btn-success" value="Save"> <input
								type="submit" name="_eventId_cancel"
								class="btn btn-md btn-danger" value="Cancel">

						</div>
						</div>
					</form:form>
				
			</div>
		</div>
	</div>
	</div>

</div>
</div>
</div>
</div>
		<div class="bot1_wrapper">
<div class="bot1_wrapper2">
<div class="container">
<div class="row">
<div class="span12">
<div class="bot1 clearfix">
<div class="slogan1">
<div class="row">
<div class="span4 block1">

<div class="txt1">Made with love<br>for <span>special</span> day</div>

<div class="txt2"> Order our Kolkata special Cakes online made for the people of Kolkata. You can get online cake delivery in Kolkata to any location in Kolkata city. </div>

</div>
<div class="span4 block2">

<img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/special1.png'alt="" class="img">

</div>
<div class="span4 block3">

<div class="txt1">Top tier of the<br><span>cake</span> tradition</div>

<div class="txt2">Vibrant and vivacious, this Royal Albert cake stand offers a beautiful two-tier, vintage design. This cake stand is rendered in fine bone china and ...</div>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="bot2_wrapper">
<div class="container">
<div class="row">
<div class="span12">
<div class="bot2">
<div class="row">
<div class="span2 block1">
<div class="logo_wrapper2"><a href="index.html" class="logo"><img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/logo2.png' alt=""></a></div>
</div>
<div class="span7 block2">
<div class="phone1">Best cakes <span>123-456-789</span></div>

<div class="social_wrapper">
	<ul class="social clearfix">
	    <li><a href="#"><img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/social_ic1.png'></a></li>
	    <li><a href="#"><img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/social_ic2.png'></a></li>
	    <li><a href="#"><img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/social_ic3.png'></a></li>
	    <li><a href="#"><img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/social_ic4.png'></a></li>
	    <li><a href="#"><img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/social_ic5.png'></a></li>
	</ul>
</div>

</div>
<div class="span3 block3">
<div class="bot2_title">Our Address</div>
<div class="adress1">
Kankurgachi,CIT more<br>Kolkata,700061.
</div>
</div>
</div>
</div>
<footer>Copyright  &copy; 2017. All rights reserved. Cake Nation shop.</footer>
</div>
</div>
</div>
</div>
</body>
</html>