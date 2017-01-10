<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

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
<h1>Contacts</h1>
</div>
</div>
</div>
</div>
</div>

<div id="content">
<div class="container">

<h2>Our Address</h2>

<div class="row">


<figure class="google_map">
	<div class="figure_inner">
		<div style="width: 100%"><iframe width="100%" height="600" src="http://www.mapi.ie/create-google-map/map.php?width=100%&amp;height=600&amp;hl=en&amp;coord=22.580601,88.39066400000002&amp;q=Kankurgachi%2Ckolkata-%09700054%2CIndia+(Cake%20Nation)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=A&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe></div><br />
	</div>
</figure>



</div>

<div class="line1"></div>

<h3>Contact Form</h3>

<div class="row">
<div class="span12">

<div id="note"></div>
<div id="fields">
	<form id="ajax-contact-form" class="form-horizontal" action="javascript:alert('success!');">
		<div class="row">
			<div class="span4">
				<div class="control-group">
				    <label class="control-label" for="inputName">Your full name:</label>
				    <div class="controls">
				      <input class="span4" type="text" id="inputName" name="name" value="Your full name:" onBlur="if(this.value=='') this.value='Your full name:'" onFocus="if(this.value =='Your full name:' ) this.value=''">
				    </div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
				    <label class="control-label" for="inputEmail">Your email:</label>
				    <div class="controls">
				      <input class="span4" type="text" id="inputEmail" name="email" value="Your email:" onBlur="if(this.value=='') this.value='Your email:'" onFocus="if(this.value =='Your email:' ) this.value=''">
				    </div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
				    <label class="control-label" for="inputPhone">Phone number:</label>
				    <div class="controls">
				      <input class="span4" type="text" id="inputPhone" name="phone" value="Phone number:" onBlur="if(this.value=='') this.value='Phone number:'" onFocus="if(this.value =='Phone number:' ) this.value=''">
				    </div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="control-group">
				    <label class="control-label" for="inputMessage">Message:</label>
				    <div class="controls">
				      <textarea class="span12" id="inputMessage" name="content" onBlur="if(this.value=='') this.value='Message:'"
                        onFocus="if(this.value =='Message:' ) this.value=''">Message:</textarea>
				    </div>
				</div>
			</div>
		</div>
		
		<button type="submit" class="submit">Submit</button>
	</form>
</div>


</div>

</div>


</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</body>
</html>