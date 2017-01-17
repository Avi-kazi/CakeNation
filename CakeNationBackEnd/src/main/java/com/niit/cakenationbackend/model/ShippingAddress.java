package com.niit.cakenationbackend.model;

import java.io.Serializable;

import javax.persistence.Id;

import org.hibernate.validator.constraints.NotBlank;

public class ShippingAddress implements Serializable{
	private static final long serialVersionUID= 1L;
	@Id
	private String shippingAddressId;
	@NotBlank(message="Specify Address")
	private String line1;
	private String line2;
	@NotBlank(message="Specify City")
	private String city;
	@NotBlank(message="Specify State")
	private String state;
	@NotBlank(message="Specify Country")
	private String country;
	@NotBlank(message="Specify ZipCode")
	private String zipcode;
	@Override
	public String toString(){
		return shippingAddressId+","+line1+","+line2+","+city+","+state+","+country+","+zipcode;
		
	}
	
	public String getShippingAddressId() {
		return shippingAddressId;
	}
	public void setShippingAddressId(String shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}
	public String getLine1() {
		return line1;
	}
	public void setLine1(String line1) {
		this.line1 = line1;
	}
	public String getLine2() {
		return line2;
	}
	public void setLine2(String line2) {
		this.line2 = line2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	

}
