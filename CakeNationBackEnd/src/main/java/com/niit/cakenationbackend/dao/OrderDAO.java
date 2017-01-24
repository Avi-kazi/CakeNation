package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.Order;

public interface OrderDAO {
	public List<Order> list(String userid);

	public Order get(String userid);
	public void saveOrUpdate(Order order);

	public String delete(String userid) ;
	
	public Long getTotalAmount(String userid);


}
