<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>
	<table id="cart" class="table table-striped" style="background: pink">
		<thead>
			<tr>
				<th allign="left" width="80">Cart ID</th>
				<th allign="left" width="80">Product Name</th>
				<th allign="left" width="80">Quantity</th>
				<th allign="left" width="80">Price</th>
				<th colspan="2" allign="center" width="60">Action</th>

			</tr>
		</thead>
		<c:forEach items="${cartlist } var="cart">
			<tr>
				<td allign="left">${cart.id }</td>
				<td allign="left">${cart.productName }</td>
				<td allign="left">${cart.quantity }</td>
				<td allign="left">${cart.price }</td>
				<td allign="left"><a"<c:url value='/myCart/delete/${cart.id }'/>">Delete</a></td>
			</tr>

		</c:forEach>
		<h2>Total Cost:${totalAmount}</h2>
		<br>
		<a href="cart_checkout">Checkout</a>
	</table>
</body>
</html>