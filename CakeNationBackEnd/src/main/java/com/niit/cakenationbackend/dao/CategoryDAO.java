package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.Category;

public interface CategoryDAO {
	public List<Category> list();

	public Category get(String id);

	public boolean save(Category category);
	public boolean update(Category category);

	public boolean delete(Category category);
	public Category getByName(String name);
	public List<String> categoryNameList();
	


}
