package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.Cart;

public interface CartDAO {
	public List<Cart> list(String userid);
    public void save(Cart cart);
    public Long getTotalAmount(String userid);
    public String delete(long id);
	


}
