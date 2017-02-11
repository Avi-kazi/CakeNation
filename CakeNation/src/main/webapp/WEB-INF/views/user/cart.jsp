<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
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
 ${errorMessage }
<div class="top2_wrapper">
<div class="container">
<div class="row">
<div class="span12">

<div class="top2 clearfix">

 ${successMessage }
   ${pleasebuy}
	<table id="cart" class="table table-striped" style="background: pink">
		<thead>
			<tr>
			    <th style="width: 30%">Product</th>
				<th style="width: 8%">Cart ID</th>
				<th style="width: 20%">Product Name</th>
				<th style="width: 8%">Quantity</th>
				<th style="width: 20%">Total Price</th>
				<th style="width: 20%">Action</th>
				

			</tr>
		</thead>
		<c:forEach items="${cartlist }" var="cart">
			<tr>
			<td data-th="Product"><img
						src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/${cart.productid }.jpg'
						alt="..." class="img-responsive" height="50%" width="50%" /></td>
                       <input type="hidden" value="${cart.productid}" id="productid"/>
			     
				<td allign="left">${cart.id }</td>
				<td allign="left">${cart.productName }</td>
				<td allign="left">${cart.quantity }</td>
				<td allign="left">${cart.price }</td>
				<td allign="left"><a href="<c:url value="/myCart/delete/${cart.id }"/>">Delete</a></td>
				
			</tr>

		</c:forEach>
		
		</table>
		<div allign="right">
		<h6 allign="right">Total Cost:${totalAmount}</h6>
		<br>
		<a href="cart_checkout" class="btn btn-info" allign="right">Checkout</a> &nbsp &nbsp <a href="gallery" class="btn btn-info" allign="right">Back to Shopping</a> 
	</div>
	<br>
	</div>

</div>
</div>
</div>
</div>
 ${errorMessage }
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