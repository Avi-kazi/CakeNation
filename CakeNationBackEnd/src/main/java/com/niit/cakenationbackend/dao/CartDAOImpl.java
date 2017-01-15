package com.niit.cakenationbackend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.cakenationbackend.model.Cart;
import com.niit.cakenationbackend.model.Category;
@Repository("cartDao")
public class CartDAOImpl implements CartDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
@Transactional
	public List<Cart> list() {
		// TODO Auto-generated method stub
	String hql="from Category";
	Query query=sessionFactory.getCurrentSession().createQuery(hql);
	return query.list();

	}
@Transactional
	public Cart get(String userId) {
		// TODO Auto-generated method stub
	return (Cart) sessionFactory.getCurrentSession().get(Cart.class, userId);
	}
@Transactional
	public void saveOrUpdate(Cart cart) {
		// TODO Auto-generated method stub
	try {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
@Transactional
	public String delete(String userId) {
		// TODO Auto-generated method stub
		return null;
	}
@Transactional
	public int getTotalAmount(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}


	

}
