package com.niit.cakenationbackend.model;

import java.io.Serializable;

import org.springframework.stereotype.Component;
@Component
public class PaymentMethod implements Serializable {
	private String payment;

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

}
