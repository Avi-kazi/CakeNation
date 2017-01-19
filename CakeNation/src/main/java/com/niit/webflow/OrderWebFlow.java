package com.niit.webflow;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.cakenation.CategoryController;
import com.niit.cakenationbackend.model.BillingAddress;
import com.niit.cakenationbackend.model.Order;
import com.niit.cakenationbackend.model.PaymentMethod;
import com.niit.cakenationbackend.model.Product;
import com.niit.cakenationbackend.model.ShippingAddress;
@Component
public class OrderWebFlow {
	Logger log = LoggerFactory.getLogger(OrderWebFlow.class);
	@Autowired
	Order order;
	@Autowired
	HttpSession httpSession;
	@Autowired
	Product product;
	@Autowired
	PaymentMethod paymentMethod;
	public Order initFlow(){
		log.debug("WEBFLOW::Starting of the method init flow");
		order=new Order();
		log.debug("WEBFLOW::Ending of the method init flow");
		return order;
	}
	public String addShippingAddress(Order order,ShippingAddress shippingAddress){
		log.debug("WEBFLOW::Starting of the method addShippingAddress");
		order.setShippingAddress(shippingAddress);
		log.debug("WEBFLOW::Ending of the method addShippingAddress");
		return "success";
	}
	public String addBillingAddress(Order order,BillingAddress billingAddress){
		log.debug("WEBFLOW::Starting of the method addBillingAddress");
		order.setBillingAddress(billingAddress);
		log.debug("WEBFLOW::Ending of the method addBillingAddress");
		return "success";
	}
	public String addPaymentMethod(Order order,PaymentMethod paymentMethod){
		log.debug("WEBFLOW::Starting of the method addPaymentMethod");
		order.setPaymentMethod(paymentMethod.getPaymentMethod());
		confirmOrder(order);
		log.debug("WEBFLOW::Ending of the method addPaymentMethod");
		return "success";
	}
	public String confirmOrder(Order order){
		log.debug("WEBFLOW::Starting of the method confirmOrder");
		log.debug("WEBFLOW::Ending of the method confirmOrder");
		return "success";
	}

}
