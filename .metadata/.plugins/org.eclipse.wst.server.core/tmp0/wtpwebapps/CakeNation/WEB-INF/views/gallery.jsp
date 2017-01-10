<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/bootstrap-responsive.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/touchTouch.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/isotope.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen">

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
$(window).load(function() {
	//

	// isotop
	var $container = $('#isotope-items'),
		$optionSet = $('#isotope-options'),
	    $optionSets = $('#isotope-filters'),
	    $optionLinks = $optionSets.find('a');
    $container.isotope({
        filter: '*',
        layoutMode: 'fitRows'
    });
   	$optionLinks.click(function(){
   		var $this = $(this);
    	// don't proceed if already selected
		if ( $this.hasClass('selected') ) {
			return false;
		}
   		$optionSet.find('.selected').removeClass('selected');
   		$this.addClass('selected');

        var selector = $(this).attr('data-filter');
        $container.isotope({
            filter: selector
        });
      	return false;
    });
	$(window).on("resize", function( event ) {
		$container.isotope('reLayout');
	});

	// touchTouch
	$('.thumb-isotope .thumbnail a').touchTouch();

}); //
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
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

<h2>Our Photos</h2>

<div id="isotope-options">
    <ul id="isotope-filters" class="clearfix">
        <li><a href="#" class="selected" data-filter="*">Show All</a></li>
        <li><a href="#" data-filter=".isotope-filter1">Category 1</a></li>
        <li><a href="#" data-filter=".isotope-filter2">Category 2</a></li>
        <li><a href="#" data-filter=".isotope-filter3">Category 3</a></li>
    </ul>
</div>

<ul class="thumbnails" id="isotope-items">
    <li class="span3 isotope-element isotope-filter1">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery01.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter2">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery02.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter3">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery03.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter1">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery04.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter2">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery05.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter3">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery06.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter1">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery07.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter2">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery08.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter3">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery09.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter1">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="resources/images/blank.png">
					<figure>
						<img src="resources/images/gallery10.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter2">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="images/blank.png">
					<figure>
						<img src="resources/images/gallery11.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
					</div>
				</a>
			</div>
		</div>
    </li>
    <li class="span3 isotope-element isotope-filter3">
		<div class="thumb-isotope">
			<div class="thumbnail clearfix">
				<a href="images/blank.png">
					<figure>
						<img src="resources/images/gallery12.jpg" alt=""><em></em>
					</figure>
					<div class="caption">
						Lorem ipsum dolor sit amet conse
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>