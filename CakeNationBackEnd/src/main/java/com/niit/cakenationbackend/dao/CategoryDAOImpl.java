package com.niit.cakenationbackend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.cakenationbackend.model.Category;
@Repository("categoryDao")
public class CategoryDAOImpl implements CategoryDAO{
@Autowired
private SessionFactory sessionFactory;
@Transactional
	public List<Category> list() {
		// TODO Auto-generated method stub
		String hql="from Category";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
@Transactional
	public Category get(String id) {
		// TODO Auto-generated method stub
		return (Category) sessionFactory.getCurrentSession().get(Category.class, id);
	}
@Transactional
	public boolean save(Category category) {
		// TODO Auto-generated method stub
	try {
		sessionFactory.getCurrentSession().save(category);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
		return true;
	}
@Transactional
	public boolean update(Category category) {
		// TODO Auto-generated method stub
	try {
		sessionFactory.getCurrentSession().update(category);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
		return true;
	}
@Transactional
	public boolean delete(Category category) {
		// TODO Auto-generated method stub
	try {
		sessionFactory.getCurrentSession().delete(category);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
		return true;
	}
@Transactional
public Category getByName(String name) {
	// TODO Auto-generated method stub
	String hql = "from Category where name=" + "'"+ name +"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	@SuppressWarnings("unchecked")
	List<Category> listCategory = (List<Category>) query.list();
	
	if (listCategory != null && !listCategory.isEmpty()) {
		return listCategory.get(0);
	}
	
	return null;
}
@Transactional
public List<String> categoryNameList() {
	// TODO Auto-generated method stub
	String hql = "select name from Category";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	
	return query.list();
	
}

}
