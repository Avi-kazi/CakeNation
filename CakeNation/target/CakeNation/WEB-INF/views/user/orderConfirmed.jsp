<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Confirmation</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/bootstrap-responsive.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen">

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

<div class="container-fluid">
<div class="content">
<div class="jumbotron">
<h3> <b>  Ordered Confirmed......Product will be delivered shortly..</b> </h3>
<h4>Order ID :   </h4>        <strong> ${order.orderId}</strong><br>
<h4>Shipping Address: </h4>   <strong> ${order.shippingAddress }</strong><br>
<h4>Billing Address: </h4>    <strong> ${order.billingAddress}</strong><br><br>
<a href="logout" class="btn btn-md btn-success" role="button" name="_eventId_finalHome">Home</a>
       
</div>
</div>
</div>
</div>

</div>
</div>
</div>
</div>
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>