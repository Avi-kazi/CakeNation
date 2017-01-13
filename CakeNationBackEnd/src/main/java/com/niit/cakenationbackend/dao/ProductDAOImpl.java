package com.niit.cakenationbackend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.cakenationbackend.model.Product;
@Repository("productDao")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	public List<Product> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession().createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listProduct;
	}
	@Transactional
	public Product get(String productid) {
		// TODO Auto-generated method stub
		String hql = "from Product where productid=" + "'" + productid + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		return null;
	}
	@Transactional
	public boolean save(Product product) {
		// TODO Auto-generated method stub
		
				try {

					sessionFactory.getCurrentSession().save(product);
					return true;
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return false;
				}
	}
	@Transactional
	public boolean update(Product product) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				try {

					sessionFactory.getCurrentSession().update(product);
					return true;
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return false;
				}
	}
	@Transactional
	public boolean delete(Product product) {
		// TODO Auto-generated method stub
				try {

					sessionFactory.getCurrentSession().delete(product);
					return true;
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return false;
				}
	}

}
