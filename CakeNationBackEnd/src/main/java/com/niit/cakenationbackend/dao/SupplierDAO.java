package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.Supplier;

public interface SupplierDAO {
	public List<Supplier> list();

	public Supplier get(String supplier_id);
	
	public boolean save(Supplier supplier);
	
	public boolean update(Supplier supplier);


	public boolean delete(Supplier supplier);

	public Supplier getByName(String name);
}
