<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gallery</title>

<link rel="stylesheet" href="resources/css/bootstrap.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/bootstrap-responsive.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/touchTouch.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/isotope.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="resources/css/style.css" type="text/css"
	media="screen">

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="resources/js/superfish.js"></script>

<script type="text/javascript" src="resources/js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="resources/js/touchTouch.jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.isotope.min.js"></script>

<script>
	$(document).ready(function() {
		//

	}); //
	$(window)
			.load(
					function() {
						//

						// isotop
						var $container = $('#isotope-items'), $optionSet = $('#isotope-options'), $optionSets = $('#isotope-filters'), $optionLinks = $optionSets
								.find('a');
						$container.isotope({
							filter : '*',
							layoutMode : 'fitRows'
						});
						$optionLinks.click(function() {
							var $this = $(this);
							// don't proceed if already selected
							if ($this.hasClass('selected')) {
								return false;
							}
							$optionSet.find('.selected')
									.removeClass('selected');
							$this.addClass('selected');

							var selector = $(this).attr('data-filter');
							$container.isotope({
								filter : selector
							});
							return false;
						});
						$(window).on("resize", function(event) {
							$container.isotope('reLayout');
						});

						// touchTouch
						$('.thumb-isotope .thumbnail a').touchTouch();

					}); //
</script>
<!--[if lt IE 8]>
		<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg"border="0"alt=""/></a></div>
	<![endif]-->

<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
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
												<li><a href="home">Home</a></li>
												<li class="sub-menu sub-menu-1"><a href="gallery">Categories</a>
													<ul>
														<c:forEach items="${listcategorynames}" var="categoryname">

															<li><a href="gallery"><c:out
																		value="${categoryname }"></c:out></a></li>
														</c:forEach>




													</ul></li>
												
											</ul>

											<ul class="nav nav_right sf-menu clearfix">
											<li><a href="about">About Us</a></li>
											<li><a href="contact">contacts</a></li>
												<!-- <li><a href="loginhere">Login</a></li>
												<li><a href="register">Sign Up</a></li> -->
												

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

		<div class="top2_wrapper">
			<div class="container">
				<div class="row">
					<div class="span12">

						<div class="top2 clearfix"></div>

					</div>
				</div>
			</div>
		</div>

		<div class="h1_wrapper">
			<div class="">
				<div class="">
					<div class="clearfix">
						<div class="h1_inner">
							<h1>Gallery</h1>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="content">
			<div class="container">
				<div class="row">
					<div class="span12">

						<h2>Our Cakes</h2>

						<div id="isotope-options">
							<ul id="isotope-filters" class="clearfix">
								<li><a href="#" class="selected" data-filter="*">Show
										All</a></li>
								<li><a href="#" data-filter=".isotope-filter1">BirthDay</a></li>
								<li><a href="#" data-filter=".isotope-filter2">Anniversary</a></li>
								<li><a href="#" data-filter=".isotope-filter3">Special</a></li>
							</ul>
						</div>

						<ul class="thumbnails" id="isotope-items">
							<li class="span3 isotope-element isotope-filter1">
								<div class="thumb-isotope">
									
										<a href="selectedproduct/PR001"> <figure> <img
												src="resources/images/PR001.jpg" alt="">
											<em></em> </figure>
											
										</a>
									
								</div>
							</li>
							<li class="span3 isotope-element isotope-filter2">
								<div class="thumb-isotope">
									
										<a href="selectedproduct/PR002"> <figure> <img
												src="resources/images/PR002.jpg" alt="">
											<em></em> </figure>
											
										</a>
									
								</div>
							</li>
							<li class="span3 isotope-element isotope-filter3">
								<div class="thumb-isotope">
									
										<a href="selectedproduct/PR003"> <figure> <img
												src="resources/images/PR003.jpg" alt="">
											<em></em> </figure>
											
										</a>
									
								</div>
							</li>

							<li class="span3 isotope-element isotope-filter1">
								<div class="thumb-isotope">
									
										<a href="selectedproduct/PR004"> <figure> <img
												src="resources/images/PR004.jpg" alt="">
											<em></em> </figure>
											
										
										</a>
									
								</div>
							</li>
							
							<li class="span3 isotope-element isotope-filter2">
								<div class="thumb-isotope">
									
										<a href="selectedproduct/PR005"> <figure> <img
												src="resources/images/PR005.jpg" alt="">
											<em></em> </figure>
											
										</a>
									
								</div>
							</li>
							<li class="span3 isotope-element isotope-filter3">
								<div class="thumb-isotope">
									
										<a href="selectedproduct/PR006"> <figure> <img
												src="resources/images/PR006.jpg" alt="">
											<em></em> </figure>
											
											
										</a>
									
								</div>
							</li>



              </ul>
						



					</div>
				</div>




			</div>
		</div>
		
		<%@ include file="/WEB-INF/views/footer.jsp"%>

		<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</body>
</html>