<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body class="not-front">
	<div id="main">

		<div class="cake1"></div>
		<div class="cake2"></div>
		<div class="cake3"></div>
		<div class="cake4"></div>

		<div class="top1_wrapper">
			<div class="top1_wrapper2">
				<div class="container">
					<div class="row">
						<div class="span12">
							<div class="top1 clearfix">

								<header>
								<div class="logo_wrapper">
									<a href="index.html" class="logo"><img
										src="resources/images/1234.png" alt=""></a>
								</div>
								</header>

								<div class="navbar navbar_">
									<div class="navbar-inner navbar-inner_">
										<a class="btn btn-navbar btn-navbar_" data-toggle="collapse"
											data-target=".nav-collapse_"> <span class="icon-bar"></span>
											<span class="icon-bar"></span> <span class="icon-bar"></span>
										</a>
										<div class="nav-collapse nav-collapse_ collapse clearfix">
											<ul class="nav nav_left sf-menu clearfix">
												<li><a href="manage">Home</a></li>
												<li class="sub-menu sub-menu-1"><a href="gallery">Categories</a>
													<ul>
														<c:forEach items="${listcategorynames}" var="categoryname">

															<li><a href="gallery"><c:out
																		value="${categoryname }"></c:out></a></li>
														</c:forEach>

													</ul></li>
												<li><a href="about">About Us</a></li>
											</ul>

											<ul class="nav nav_right sf-menu clearfix">
												<li><a href="logout">Logout</a></li>
												<li><a href="contact">Contacts</a></li>
											</ul>
										</div>
									</div>
								</div>



							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>