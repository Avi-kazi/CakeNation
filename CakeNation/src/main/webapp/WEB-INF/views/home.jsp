<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/bootstrap-responsive.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/camera.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="resources/css/style.css" type="text/css"
	media="screen">

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="resources/js/superfish.js"></script>

<script type="text/javascript" src="resources/js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="resources/js/camera.js"></script>
<script type="text/javascript"
	src="resources/js/jquery.mobile.customized.min.js"></script>

<script type="text/javascript" src="resources/js/jquery.caroufredsel.js"></script>
<script type="text/javascript"
	src="resources/js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script>
	$(document).ready(
			function() {
				//

				$('#camera_wrap').camera({
					//thumbnails: true
					//alignment			: 'centerRight',
					autoAdvance : true,
					mobileAutoAdvance : true,
					fx : 'simpleFade',
					height : '41%',
					hover : false,
					loader : 'none',
					navigation : true,
					navigationHover : true,
					mobileNavHover : true,
					playPause : false,
					pauseOnClick : false,
					pagination : true,
					time : 5000,
					transPeriod : 1000,
					minHeight : '200px'
				});

				//	carouFredSel banner
				$('#banner .carousel.main ul').carouFredSel({
					auto : {
						timeoutDuration : 8000
					},
					responsive : true,
					prev : '.banner_prev',
					next : '.banner_next',
					width : '100%',
					scroll : {
						items : 1,
						duration : 1000,
						easing : "easeOutExpo"
					},
					items : {
						width : '350',
						height : 'variable', //	optionally resize item-height
						visible : {
							min : 1,
							max : 4
						}
					},
					mousewheel : false,
					swipe : {
						onMouse : true,
						onTouch : true
					}
				});

				$(window).bind("resize", updateSizes_vat).bind("load",
						updateSizes_vat);
				function updateSizes_vat() {
					$('#banner .carousel.main ul').trigger("updateSizes");
				}
				updateSizes_vat();

			}); //
	$(window).load(function() {
		//

	}); //
</script>
</head>
<tr>
					<c:if test="${loggedOut==true}">
						<td>${logoutMessage}</td>
					</c:if>
				</tr>
<body class="front">
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
												<li class="active"><a href="home">Home</a></li>
												<li class="sub-menu sub-menu-1"><a href="gallery">Categories</a>
													<ul>
														<c:forEach items="${listcategorynames}" var="categoryname">

															<li><a href="loginhere"><c:out
																		value="${categoryname }"></c:out></a></li>
														</c:forEach>




													</ul></li>
												<li><a href="about">About Us</a></li>
											</ul>

											<ul class="nav nav_right sf-menu clearfix">
												<li><a href="loginhere">Login</a></li>
												<li><a href="register">Sign Up</a></li>
												<li><a href="contact">contacts</a></li>

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

						<div class="top2 clearfix">

							<div id="slider_wrapper">
								<div class="">
									<div id="slider_inner" class="clearfix">
										<div id="slider" class="clearfix">
											<div id="camera_wrap">
												<div data-src="resources/images/slide01.jpg">
													<div class="camera_caption nav1 fadeIn">
														<div class="txt1">The Best Cakes for the Special
															Occasions</div>
													</div>
												</div>
												<div data-src="resources/images/slide02.jpg">
													<div class="camera_caption nav1 fadeIn">
														<div class="txt1">The Best Cakes for the Special
															Occasions</div>
													</div>
												</div>
												<div data-src="resources/images/slide03.jpg">
													<div class="camera_caption nav1 fadeIn">
														<div class="txt1">The Best Cakes for the Special
															Occasions</div>
													</div>
												</div>

											</div>
										</div>
									</div>
									<div class="shadow1">
										<img src="resources/images/shadow1.png" alt="" class="img">
									</div>
								</div>
							</div>

							<div id="banner_wrapper">
								<div class="">
									<div id="banner">
										<a class="banner_prev" href="#"></a> <a class="banner_next"
											href="#"></a>
										<div class="carousel-box">
											<div class="inner">
												<div class="carousel main">
													<ul>
														<li>
															<div class="banner">
																<div class="banner_inner">
																	<a href="#">
																		<div class="banner_inner2">
																			<div class="txt1">Cupcakes</div>
																			<figure>
																			<img src="resources/images/banner1.jpg" alt=""
																				class="img"></figure>
																			<div class="txt2">A cupcake is a small cake
																				designed to serve one person, which may be baked in
																				a small thin paper or aluminum cup.</div>
																			<div class="txt3">read more</div>
																		</div>
																	</a>
																</div>
															</div>
														</li>
														<li>
															<div class="banner">
																<div class="banner_inner">
																	<a href="#">
																		<div class="banner_inner2">
																			<div class="txt1">Birthday</div>
																			<figure>
																			<img src="resources/images/banner2.jpg" alt=""
																				class="img"></figure>
																			<div class="txt2">The birthday cake has been an
																				integral part of the birthday celebrations in
																				western European countries since the middle of the
																				19th century,</div>
																			<div class="txt3">read more</div>
																		</div>
																	</a>
																</div>
															</div>
														</li>
														<li>
															<div class="banner">
																<div class="banner_inner">
																	<a href="#">
																		<div class="banner_inner2">
																			<div class="txt1">Wedding</div>
																			<figure>
																			<img src="resources/images/banner3.jpg" alt=""
																				class="img"></figure>
																			<div class="txt2">A wedding cake is the
																				traditional cake served at wedding receptions
																				following dinner. In some parts of England, the
																				wedding cake is served</div>
																			<div class="txt3">read more</div>
																		</div>
																	</a>
																</div>
															</div>
														</li>
														<li>
															<div class="banner">
																<div class="banner_inner">
																	<a href="#">
																		<div class="banner_inner2">
																			<div class="txt1">Special</div>
																			<figure>
																			<img src="resources/images/banner4.jpg" alt=""
																				class="img"></figure>
																			<div class="txt2">Special occasion cake
																				Recipes. Sort by: title, rating ... Chocolate Mousse
																				Cake with Raspberries. star rating ...</div>
																			<div class="txt3">read more</div>
																		</div>
																	</a>
																</div>
															</div>
														</li>
														<li>
															<div class="banner">
																<div class="banner_inner">
																	<a href="#">
																		<div class="banner_inner2">
																			<div class="txt1">Cupcakes</div>
																			<figure>
																			<img src="resources/images/banner1.jpg" alt=""
																				class="img"></figure>
																			<div class="txt2">A cupcake is a small cake
																				designed to serve one person, which may be baked in
																				a small thin paper or aluminum cup.</div>
																			<div class="txt3">read more</div>
																		</div>
																	</a>
																</div>
															</div>
														</li>
														<li>
															<div class="banner">
																<div class="banner_inner">
																	<a href="#">
																		<div class="banner_inner2">
																			<div class="txt1">Birthday</div>
																			<figure>
																			<img src="resources/images/banner2.jpg" alt=""
																				class="img"></figure>
																			<div class="txt2">The birthday cake has been an
																				integral part of the birthday celebrations in
																				western European countries since the middle of the
																				19th century,</div>
																			<div class="txt3">read more</div>
																		</div>
																	</a>
																</div>
															</div>
														</li>
														<li>
															<div class="banner">
																<div class="banner_inner">
																	<a href="#">
																		<div class="banner_inner2">
																			<div class="txt1">Wedding</div>
																			<figure>
																			<img src="resources/images/banner3.jpg" alt=""
																				class="img"></figure>
																			<div class="txt2">A wedding cake is the
																				traditional cake served at wedding receptions
																				following dinner. In some parts of England, the
																				wedding cake is served at a wedding breakfast</div>
																			<div class="txt3">read more</div>
																		</div>
																	</a>
																</div>
															</div>
														</li>
														<li>
															<div class="banner">
																<div class="banner_inner">
																	<a href="#">
																		<div class="banner_inner2">
																			<div class="txt1">Special</div>
																			<figure>
																			<img src="resources/images/banner4.jpg" alt=""
																				class="img"></figure>
																			<div class="txt2">Special occasion cake
																				Recipes. Sort by: title, rating ... Chocolate Mousse
																				Cake with Raspberries. star rating ...</div>
																			<div class="txt3">read more</div>
																		</div>
																	</a>
																</div>
															</div>
														</li>

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
			</div>
		</div>
          <div>
          <table>
                 <c:choose>
						<c:when test="${empty loggedInUser}">
							<td align="left">Existing user<a href="login"> Login
									here</a></td>
							<td align="center">New user<a href="register">
									Register here</a></td>
						</c:when>
						<c:when test="${not empty loggedInUser}">
							<td>Welcome ${loggedInUser},</td>
							<td align="right"><a href="logout"> logout</a></td>
						</c:when>

					</c:choose>
				</tr>
				
				<tr>
					<c:if test="${not empty cartSize}">
						<td align="right"><a href="myCart"> My Cart </a>( ${cartSize})</td>
					</c:if>
				</tr>
				
			</table>
		
</div>
<div id="register">
				<c:if test="${isUserClickedRegisterHere==true}">
					<%@ include file="registration.jsp"%>

				</c:if>
			</div>

			<div id="loginHere">
				<c:if test="${isUserClickedLoginHere==true || invalidCredentials==true}">
				  <div id = "error">  ${errorMessage} </div>
					<%@ include file="login.jsp"%>

				</c:if>
			</div>

			<div id="admin">

				<c:if test="${isAdmin==true}">

					<%@ include file="/WEB-INF/views/admin/admin.jsp"%>

				</c:if>
				</div>
		<div class="h1_wrapper">
			<div class="">
				<div class="">
					<div class="clearfix">
						<div class="h1_inner">
							<h1>Our Special Proposals</h1>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="content">
			<div class="container">
				<div class="row">
					<div class="span4">

						<h4>Custom cake from Rs40</h4>

						<p>Flowers, Anytime Anywhere · Fixed Time Delivery · Free
							Shipping in India · Mid-Night Delivery Services: Midnight
							Delivery, Same Day Delivery, Fixed Time Delivery</p>

						<a href="#" class="button1">details</a>

					</div>
					<div class="span4">

						<h4>Cakes for every special day</h4>

						<p>I would like to let everyone know how wonderful it was to
							work with Special Days Cake Boutique. They did a beautiful semi
							naked cake and it was amazing.</p>

						<a href="#" class="button1">details</a>

					</div>
					<div class="span4">

						<h4>Corporate service specials</h4>

						<p>We have great collection of corporate cakes that can be
							delivered in India same ... The Maya the Bee Special Cupcakes are
							bright and cheery and bring in some ..</p>

						<a href="#" class="button1">details</a>

					</div>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>