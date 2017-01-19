<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-2 col-md-offset-2">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Make Payment </h3>
			 			</div>
			 			
			    					

<form:form class="form-horizontal" commandName="paymentMethod">
  <span class="payment-errors"></span>

  <div class="form-row">
    <label>
       <h5> <b>                       
 
                    <input type=radio name="paymentMethod"  value=NetBanking />

                    Enter Card No</h5> </b>   
      <input type="text" size="20" data-stripe="number">
    </label>
  </div>

  <div class="Section_Header">                    
 
                <h5> <b>                       
 
                    <input type=radio name="paymentMethod"  value=Cash On Delivery" />

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

</body>
</html>