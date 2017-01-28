<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
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
${isAdminClickedProducts}
<%@ include file="adminhome.jsp"%>

<spring:form action="${pageContext.request.contextPath}/manageaddProduct?${_csrf.parameterName}=${_csrf.token}" commandName="product" enctype="multipart/form-data" method="post">
<table   align="center">
			<h2 align="center">Here Admin add all Products</h2>
				<tr>
					<c:choose>
						<c:when test="${not empty product.productname}">
							<td><spring:label path="productid"><springtags:message text="Product ID :"></springtags:message></spring:label></td>
          					<td><spring:input path="productid" disabled="true" readonly="true" /></td>
						</c:when>
						<c:otherwise>
							<td><spring:label path="productid"><strong><springtags:message text="Product ID :" ></springtags:message></strong></spring:label></td>
		         			<td><spring:input path="productid"  pattern=".{3,10}" required="true" title="id should contains 3 to 10characters"/></td>
						</c:otherwise>
					</c:choose>
				</tr>
				
				<tr>
					<td><strong>Product Name :</strong></td>
					<td><spring:input path="productname" /></td>

				</tr>
				<tr>
					<td><strong>Product Description :</strong></td>
					<td><spring:input path="description" /></td>
				</tr>
				<tr>
					<td><strong>Product Price :</strong></td>

					<td><spring:input path="price" /></td>
				</tr>
				<tr>

					<td><strong>Category :</strong></td>
					<td><strong><spring:select path="category_id"
							items="${categorylist}" itemValue="id" itemLabel="name" >
						</spring:select>
					<td><spring:errors path="category_id" cssClass="error" /></td>
				</tr>
				
				<tr>

					<td><strong>Supplier :</strong></td>
					<td><spring:select path="supplier_id"
							items="${supplierlist}" itemValue="supplier_id" itemLabel="supplier_name" />
					<td><spring:errors path="supplier_id" cssClass="error" /></td>
				</tr>
				
									<tr>
									<td><strong>Choose Product Image:</strong></td>
										<td><spring:input type="file" path="file"
											id="Category Id" class="form-control input-sm"
											placeholder="Category Id"/></td>
											
									</tr>		
								
				<tr>
					<td align="center">
					<c:if test="${empty product.productid}">
						<input type="submit" class="btn btn-info" value="<springtags:message text="Add Product"/>" />
					</c:if>
					</td>
					<td>
					<c:if test="${not empty product.productid }">
						<input type="submit" class="btn btn-info" value="<springtags:message text="Edit Product"/>" />
					</c:if>
					</td>
				</tr>


			</table>
	</spring:form>
		</div>
		<div>
			<p>${msg}</p>
		</div>
		<div class="container">
			<table
				class="table table-striped table-bordered table-hover table-condensed">
				<caption>
					<h2> Details</h2>
				</caption>
				<thead>
					<tr>
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Product Description</th>
						<th>Product Price</th>
						<th>Category Name</th>
						<th>Supplier Name</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<c:if test="${not empty productlist}">
					<tbody>
						<c:forEach items="${productlist}" var="product">

							<tr>
								<td>${product.productid}</td>
								<td>${product.productname}</td>
								<td>${product.description}</td>
								<td>${product.price}</td>
								<td>${product.category.name}</td>
								<td>${product.supplier.supplier_name }</td>
								<td><a href="${pageContext.request.contextPath}/manageedit/${product.productid}">Edit</a></td>
								<td><a href="manageproduct/delete/${product.productid}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</c:if>
				<c:if test="${empty productlist}">
				There are no product yet. 
				</c:if>
				</tr>


			</table>
		</div>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>

</body>
</html>