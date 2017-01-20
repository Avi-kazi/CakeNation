package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.Cart;

public interface CartDAO {
	public List<Cart> list(String userid);
    public void saveOrUpdate(Cart cart);
    public Long getTotalAmount(String userid);
	


}
