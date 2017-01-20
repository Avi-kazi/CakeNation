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
 ${successMessage }
	<table id="cart" class="table table-striped" style="background: pink">
		<thead>
			<tr>
			    <th style="width: 30%">Product</th>
				<th style="width: 8%">Cart ID</th>
				<th style="width: 20%">Product Name</th>
				<th style="width: 8%">Quantity</th>
				<th style="width: 20%">Price</th>
				

			</tr>
		</thead>
		<c:forEach items="${cartlist } var="cart">
			<tr>
			<td data-th="Product"><img
						src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/${selectedproduct.productid }.jpg'
						alt="..." class="img-responsive" height="50%" width="50%" /></td>
                       <input type="hidden" value="${selectedproduct.productid}" id="productid"/>
			     
				<td allign="left">${cart.id }</td>
				<td allign="left">${cart.productName }</td>
				<td allign="left">${cart.quantity }</td>
				<td allign="left">${cart.price }</td>
				
			</tr>

		</c:forEach>
		<h2>Total Cost:${totalAmount}</h2>
		<br>
		<a href="cart_checkout" class="btn btn-info">Checkout</a>
	</table>
</body>
</html>