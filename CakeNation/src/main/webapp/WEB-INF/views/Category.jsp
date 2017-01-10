<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="springtags" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>

</head>

<body>
<%@ include file="header.jsp"%>
<br>
<br>
<br>

<div  >
<spring:form method="POST" action="${pageContext.request.contextPath}/addCategory" commandName="category">

<table>
           
<h2 >Here Admin Add All Category</h2>
				
			
    <tr>
       
        <c:choose>
         <c:when test="${not empty category.name} ">
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
    <caption><h2>Category Details</h2></caption>
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
			<td><a href="edit/${category.category_id}">Edit</a> </td>
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
 <%@ include file="footer.jsp"%>
</body>
</html>