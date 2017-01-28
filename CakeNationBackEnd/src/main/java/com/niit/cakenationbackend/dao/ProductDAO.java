package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.Product;

public interface ProductDAO {
	public List<Product> list();

	public Product get(String productid);
	
	public boolean save(Product product);
	
	public boolean update(Product product);


	public boolean delete(Product product);
	public boolean saveOrupdate(Product product);
 

}
