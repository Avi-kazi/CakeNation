<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<h1>Categories</h1>
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
<br>

<div  >
<spring:form method="POST" action="${pageContext.request.contextPath}/addCategory" commandName="category">

<table  cellpadding="5" cellspacing="5"  align="center">
           
           <h2>Here Admin Add All Category</h2>
				
			
    <tr>
       
        <c:choose>
         <c:when test="${not empty category.category_name} ">
          <td><spring:label path="category_id"><springtags:message text="CategoryID:"></springtags:message></spring:label></td>
          <td><spring:input path="category_id" disabled="true" readonly="true" /></td>
         </c:when>
         <c:otherwise>
         	<td><spring:label path="category_id"><strong><springtags:message text="CategoryID"></springtags:message></strong></spring:label></td>
         	<td><spring:input path="category_id" /></td>
         </c:otherwise>
    	</c:choose>
   <%--  <spring:input path="id" hidden="true"  /> --%>
    </tr>
    <tr>
        <td><spring:label path="category_name"><strong><springtags:message text="Category Name"></springtags:message></strong></spring:label></td>
        <td><spring:input path="category_name" /></td>
    </tr>
     <tr>
        <td><spring:label path="category_description"><strong><springtags:message text="Category Description"></springtags:message></strong></spring:label></td>
        <td><spring:input path="category_description" /></td>
    </tr>
    
    
    
    <tr>
        			<td>
        			<c:if test="${empty category.category_id}">
						<input type="submit"class="btn btn-info" value="<springtags:message text="Add Category"/>" />
					</c:if>
					</td>
       				
       				<c:if test="${not empty category.category_id}">
					<td>	
					<input type="submit" class="btn btn-info"value="<springtags:message text="Edit Category"/>" />
					
					</td>
					</c:if> 
					
    </tr>
    
       
</table>
</spring:form>
</div>
<div>
<p>${msg}</p>
</div>
<div class="container">
<table class="table table-striped table-bordered table-hover table-condensed">
    <h2 allign="center"><b>Category Details</b></h2>
    <thead>
      <tr>
      <th>Category ID</th>
       <th>Category Name</th>
       <th>Category Description</th>
       <th>Edit</th>
       <th>Delete</th>
      </tr>
      </thead>
         <c:if test="${not empty categorylist}" >
         <tbody>
			<c:forEach items="${categorylist}" var="category">		
			<tr>
			<td>${category.category_id}</td>
			<td>${category.category_name}</td>
			<td>${category.category_description} </td>
			<td><a href="${pageContext.request.contextPath}/edit/${category.category_id}">Edit</a></td>
			<td><a href="delete/${category.category_id}">Delete</a> </td>
			</tr>		
			</c:forEach>
		</tbody>	
</c:if>
<c:if test="${empty categorylist}" >
	There are no category yet. 
</c:if>
      </tr>
    
   
</table>
</div>
 <%@ include file="../footer.jsp"%>
</body>
</html>