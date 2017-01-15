package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.Cart;

public interface CartDAO {
	public List<Cart> list();

	public Cart get(String userId);
	public void saveOrUpdate(Cart cart);

	public String delete(String userId);
	
	public int getTotalAmount(String userId);
	


}
