<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>supplier</title>
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
<jsp:include page="../header.jsp"></jsp:include>
<div class="top2_wrapper">
<div class="container">
<div class="row">
<div class="span12">

<div class="top2 clearfix">

</div>
</div>
</div>
</div>
</div>




<div class="h1_wrapper">
<div class="">
<div class="">
<div class="clearfix">
<div class="h1_inner">
<h1>Suppliers</h1>
</div>
</div>
</div>
</div>
</div>
<br>
<br>
<br>

<br>
<br>

	<div>
		<spring:form method="POST" action="${pageContext.request.contextPath}/addSupplier" commandName="supplier" >
			<table  cellpadding="5" cellspacing="5"  align="center">
			
				<h2 align="center">Here Admin add all Supplier</h2>
			
				<tr>
				<c:choose>
				<c:when test="${not empty supplier.supplier_name} ">
				<td><spring:label path="supplier_id"><strong><springtags:message text="Supplier ID :"></springtags:message></strong></spring:label></td>
          		<td><spring:input path="supplier_id" disabled="true" readonly="true" /></td>
         		</c:when>
         		<c:otherwise>
		         	<td><spring:label path="supplier_id"><strong><springtags:message text="Supplier ID :"></springtags:message></strong></spring:label></td>
		         	<td><spring:input path="supplier_id" /></td>
         		</c:otherwise>
				</c:choose>
				
				</tr>
				<tr>
					<td><strong>Supplier Name:</strong></td>
					<td><spring:input path="supplier_name" /></td>
				</tr>
				<tr>
					<td><strong>Supplier Address:</strong></td>
					<td><spring:input path="supplier_address" /></td>
				</tr>


				<tr>
				<td>
        			<c:if test="${empty supplier.supplier_id}">
						<input type="submit" class="btn btn-info" value="<springtags:message text="Add Supplier"/>" />
					</c:if>
					</td>
       				
       				<td>
       				<c:if test="${not empty supplier.supplier_id}">
						<input type="submit" class="btn btn-info" value="<springtags:message text="Edit Supplier"/>" />
					</c:if>
					</td> 
					</tr>
			</table>
		</spring:form>
	</div>
<br>
<br>
<br>
	<div class="container">
		<table
			class="table table-striped table-bordered table-hover table-condensed" ">
			<caption>
				<h2>Suppliers Details</h2>
			</caption>
			<thead>
				<tr>
					<th>Supplier ID</th>
					<th>Supplier Name</th>
					<th>Supplier Address</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<c:if test="${not empty supplierlist}">
				<tbody>
					<c:forEach items="${supplierlist}" var="supplier">
						<tr>
							<td>${supplier.supplier_id}</td>
							<td>${supplier.supplier_name}</td>
							<td>${supplier.supplier_address}</td>
							<td><a href="${pageContext.request.contextPath}/editSupplier/${supplier.supplier_id}">Edit</a></td>
							<td><a href="${pageContext.request.contextPath}/deleteSupplier/${supplier.supplier_id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</c:if>
			<c:if test="${empty supplierlist}">
	There are no supplier yet. 
</c:if>
			


		</table>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>

</body>
</html>