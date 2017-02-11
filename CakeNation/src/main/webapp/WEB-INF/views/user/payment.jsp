<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap.css' type="text/css" media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap-responsive.css' type="text/css" media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/style.css' type="text/css" media="screen">

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
<div class="top2_wrapper">
<div class="container">
<div class="row">
<div class="span12">

<div class="top2 clearfix">
<div class="container" allign ="center">
        <div class="row centered-form"allign ="center">
        <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-2 col-md-offset-2" allign ="center">
        	<div class="panel panel-default"allign ="center">
        		
			    		 <h2 align="center">Make Payment </h2>
			 				
			    					

         <form:form class="form-horizontal" commandName="paymentMethod">
         <span class="payment-errors"></span>

            <div class="form-row" allign="center">
    <label>
       <h5> <b>                       
 
                    <input type=radio name="paymentMethod"  value="NetBanking" />

                    Enter Card No</h5> </b>   
      <input type="text" size="20" data-stripe="number">
    </label>
  </div>

  <div class="Section_Header"allign="center">                    
 
                <h5> <b>                       
 
                    <input type=radio name="paymentMethod"  value="Cash On Delivery" />

                    Cash On Delivery</h5> </b>              

            </div>
            <div class="col-md-offset-3">
            <input type="submit" name="_eventId_submitPaymentMethod"
            class="btn btn-md btn-success" value="save">
            <input type="submit" name="_eventId_cancel" class="btn btn-md btn-danger"
            value="cancel">
            </div>            
  
</form:form>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
</div>
</div>
		<div class="bot1_wrapper">
<div class="bot1_wrapper2">
<div class="container">
<div class="row">
<div class="span12">
<div class="bot1 clearfix">
<div class="slogan1">
<div class="row">
<div class="span4 block1">

<div class="txt1">Made with love<br>for <span>special</span> day</div>

<div class="txt2"> Order our Kolkata special Cakes online made for the people of Kolkata. You can get online cake delivery in Kolkata to any location in Kolkata city. </div>

</div>
<div class="span4 block2">

<img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/special1.png'alt="" class="img">

</div>
<div class="span4 block3">

<div class="txt1">Top tier of the<br><span>cake</span> tradition</div>

<div class="txt2">Vibrant and vivacious, this Royal Albert cake stand offers a beautiful two-tier, vintage design. This cake stand is rendered in fine bone china and ...</div>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="bot2_wrapper">
<div class="container">
<div class="row">
<div class="span12">
<div class="bot2">
<div class="row">
<div class="span2 block1">
<div class="logo_wrapper2"><a href="index.html" class="logo"><img src='<c:out value="${pageContext.request.contextPath}"/>/resources/images/logo2.png' alt=""></a></div>
</div>
<div class="span7 block2">
<div class="phone1">Best cakes <span>123-456-789</span></div>



</div>
<div class="span3 block3">
<div class="bot2_title">Our Address</div>
<div class="adress1">
Kankurgachi,CIT more<br>Kolkata,700061.
</div>
</div>
</div>
</div>
<footer>Copyright  &copy; 2017. All rights reserved. Cake Nation shop.</footer>
</div>
</div>
</div>
</div>
</body>
</html>