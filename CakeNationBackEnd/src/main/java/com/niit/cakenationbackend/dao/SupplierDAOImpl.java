package com.niit.cakenationbackend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.cakenationbackend.model.Supplier;
@Repository("supplierDao")
public class SupplierDAOImpl implements SupplierDAO{
	@Autowired
	private SessionFactory sessionFactory;
@Transactional
	public List<Supplier> list() {
		// TODO Auto-generated method stub
	@SuppressWarnings("unchecked")
	List<Supplier> listSupplier = (List<Supplier>) 
	          sessionFactory.getCurrentSession()
			.createCriteria(Supplier.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	return listSupplier;
	}
@Transactional
	public Supplier get(String supplier_id) {
		// TODO Auto-generated method stub
	String hql = "from Supplier where supplier_id=" + "'"+ supplier_id +"'";
	
	Query query =  sessionFactory.getCurrentSession().createQuery(hql);
	List<Supplier> listSupplier = (List<Supplier>) query.list();
	
	if (listSupplier != null && !listSupplier.isEmpty()) {
		return listSupplier.get(0);
	}
	return null;
	}
@Transactional
	public boolean save(Supplier supplier) {
		// TODO Auto-generated method stub
	try {

		sessionFactory.getCurrentSession().save(supplier);
		return true;
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	}
@Transactional
	public boolean update(Supplier supplier) {
		// TODO Auto-generated method stub
	try {

		sessionFactory.getCurrentSession().update(supplier);
		return true;
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	}
@Transactional
	public boolean delete(Supplier supplier) {
		// TODO Auto-generated method stub
	try {

		sessionFactory.getCurrentSession().delete(supplier);
		return true;
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	}
@Transactional
	public Supplier getByName(String name) {
		// TODO Auto-generated method stub
	String hql = "from Supplier where Supplier_name=" + "'"+ name+"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	@SuppressWarnings("unchecked")
	List<Supplier> list = (List<Supplier>) query.list();
	
	if (list != null && !list.isEmpty()) {
		return list.get(0);
	}
	
	return null;
	}

}
