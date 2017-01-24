<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<h2 align="center">Specific Product Details</h2>
	<hr height="5" style="color: purple" size="5" width="50%" />
	<div class="container">
		<div class="row">
			 <div class="col-sm-6">
				<img
					src="${pageContext.request.contextPath}/resources/images/${product.productid}.jpg"
					width="310" height="270" />
			</div>
			<div class="col-sm-5">
				<table class="table table-striped" align="right">
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
							<td align="center"><i>$product.description }</i></td>
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
							<td align="center"><i>$product.category.name }</i></td>
						</tr>

					</tbody>
				
				

				<td align="center" colspan="2"><a
					href='<c:out value="${pageContext.request.contextPath}"/>/myCart/add'
					class="btn btn-info">Add to Cart</a></td>
					<td align="center" colspan="2"><a
					href='<c:out value="${pageContext.request.contextPath}"/>/cart_checkout'
					class="btn btn-info">Check Out</a></td>

              </table> 
			</div>
		</div>
	</div>
</body>
</html>