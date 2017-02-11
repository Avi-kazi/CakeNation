<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap.css' type="text/css" media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap-responsive.css' type="text/css" media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/style.css' type="text/css" media="screen">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="resources/js/superfish.js"></script>

<script type="text/javascript" src="resources/js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="resources/js/cform.js"></script>


</head>
<body>

<div>
		
		<c:if test="${empty loggedInUser }">
		
		<li><h5><a href="register"><span class="glyphicon glyphicon-user"></span>Sign Up</a></h5>
		</li>
		</c:if>
		<c:if test="${empty loggedInUser }">
		<li><h5><a href="loginhere"><span class="glyphicon glyphicon-user"></span>Login</a></h5>
		<%@ include file="login.jsp"%>
		</li>
		</c:if>
		<c:if test="${!empty loggedInUser}">
		<c:if test="${isAdmin==true}">
               <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
					<%@ include file="/WEB-INF/views/admin/admin.jsp"%>

				</c:if>
		<c:if test="${isAdmin==false}">
		
		<span class="glyphicon glyphicon-shopping-cart"></span><a href="myCart">My Cart</a><i class="fa fa-shopping-cart">${cartSize }</i>
		<li allign="right"><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
		<%@ include file="gallery.jsp"%>
		
		</c:if>
		
			</c:if>
		
		<c:if test="${!empty logoutMessage}">
		<div class="alert alert-success"> ${logoutMessage}</div></c:if>
		
        <c:if test="${!empty successMessage}">
		<div class="alert alert-success"> ${successMessage}</div></c:if>
		
	<%-- 	<c:if test="${!empty selectedProduct.productname}">
		<%@ include file="/WEB-INF/views/SpecificProduct.jsp" %></c:if> --%>
		<c:if test="${ pleasebuy==true}">
		<span class="glyphicon glyphicon-shopping-cart"></span><a href="myCart">My Cart</a><i class="fa fa-shopping-cart">${cartSize }</i>
		<li allign="right"><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
		<div class="alert alert-error"> 
		${errorMessage}</div>
		<%@ include file="gallery.jsp"%>
		
		</c:if>
		<c:if test="${invalidCredentials==true}">
		<div class="alert alert-error"> 
		${errorMessage}<%@ include file="login.jsp"%></div>
		
		</c:if>
		
			
				 
			
			
<c:if test="${existuser==true}">
		<div class="alert alert-error"> 
		${errorMessage}<%@ include file="registration.jsp"%></div>
		
		</c:if>
                  <c:if test="${newuser==true}">
		<div class="alert alert-error"> 
		${successMessage}<%@ include file="registration.jsp"%></div>
		
		</c:if>
				
					<c:if test="${isAdminClickedCategories==true}">
						<%@ include file="/WEB-INF/views/admin/admin.jsp"%>
						<%@ include file="/WEB-INF/views/admin/Category.jsp"%>
					</c:if>
				

				
					<c:if test="${isAdminClickedProducts==true}">
						<%@ include file="/WEB-INF/views/admin/admin.jsp"%>
						<%@ include file="/WEB-INF/views/admin/Product.jsp"%>
					</c:if>
				

				
					<c:if test="${isAdminClickedSuppliers==true}">
						<%@ include file="/WEB-INF/views/admin/admin.jsp"%>
						<%@ include file="/WEB-INF/views/admin/Supplier.jsp"%>
					</c:if>
				<c:if test="${displayCart==true}">
				
		<li allign="right"><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
				<%@ include  file="/WEB-INF/views/user/cart.jsp" %>
				</c:if>
	
			

			
</body>
</html>