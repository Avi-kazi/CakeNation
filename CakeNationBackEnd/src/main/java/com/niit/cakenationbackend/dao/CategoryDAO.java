package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.Category;

public interface CategoryDAO {
	public List<Category> list();

	public Category get(String category_id);

	public boolean save(Category category);
	public boolean update(Category category);

	public boolean delete(Category category);
	public Category getByName(String category_name);
	public List<String> categoryNameList();
	public boolean saveOrUpdate(Category category);


}
