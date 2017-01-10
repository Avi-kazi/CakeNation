<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
<h1>Login</h1>
</div>
</div>
</div>
</div>
</div>
<br>
<br>
<br>

<div class="container">
 <h2><strong>Please login valid credencials</h2>
  <form action="validate">
    <div class="form-group">
      <label class="control-label col-sm-7" for="email">Email:</label>
      <div class="col-sm-7">
        <input type="email" class="form-control" id="email" placeholder="Enter email">
      </div>
    </div>
    <br>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-7">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password">
      </div>
    </div>
    <br>
    <div class="form-group">        
      <div class="col-sm-offset-6 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </form>
</div>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</body>
</html>