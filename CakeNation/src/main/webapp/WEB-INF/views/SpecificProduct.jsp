<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/style.css' type="text/css"
	media="screen">
	<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap.css'
	type="text/css" media="screen">
	<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap-responsive.css'
	type="text/css" media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/camera.css'
	type="text/css" media="screen">


<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/jquery.js ' ></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/jquery.easing.1.3.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/superfish.js'></script>

<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/jquery.ui.totop.js'></script>

<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/cform.js'></script>

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
<body>

<div class="top2_wrapper">
<div class="container">
<div class="row">
<div class="span12">

<div class="top2 clearfix">








	<br>
	<h2 align="center">Specific Product Details</h2>
	<hr height="5" style="color: purple" size="5" width="100%" />
	<div class="container" style="height:15%;width:100%;">
		
			 <div style='float:left'>
				<img
					src="${pageContext.request.contextPath}/resources/images/${product.productid}.jpg"
					 width="210" height="270" />
			</div>
		<div style='float:right'>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Product</th>
							<th>Details</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td align="center"><i>Product Code</i></td>
							<td align="center"><i>${product.productid }</i></td>
						</tr>
						<tr>
							<td align="center"><i>Product Name</i></td>
							<td align="center"><i>${product.productname }</i></td>
						</tr>
						<tr>
							<td align="center"><i>Description</i></td>
							<td align="center"><i>${product.description }</i></td>
						</tr>
						<tr>
							<td align="center"><i>Price</i></td>
							<td align="center"><i>${product.price }</i></td>
						</tr>
						<tr>
							<td align="center"><i>Supplier </i></td>
							<td align="center"><i>${product.supplier.supplier_name }</i></td>
						</tr>
						<tr>
							<td align="center"><i>Category </i></td>
							<td align="center"><i>${product.category.name }</i></td>
						</tr>
                        <tr>
                       <!--  <td align="center"><i>Quantity </i></td>
                        <td>
                        <select name="quantity">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        </select>
                        </td> -->
					</tbody>
				
				

				<td align="center" colspan="2"><a  
					href="myCart/add/${product.productid}"
					class="btn btn-info">Add to Cart</a></td>
					

              </table> 
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