package com.niit.cakenationbackend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.cakenationbackend.model.Cart;
@Repository("cartDao")
public class CartDAOImpl implements CartDAO {
	private Logger log=LoggerFactory.getLogger(CartDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
@Transactional
	public List<Cart> list(String userid) {
		// TODO Auto-generated method stub
	log.debug("Starting of the method list");
	String hql="from Cart where userid="+"'"+userid+"'"+" and status=" + "'N'";
	Query query=sessionFactory.getCurrentSession().createQuery(hql);
	//List<Cart> list=(List<Cart>)query.list();
	log.debug("Ending of the method of list");
		return query.list();
	}
@Transactional
	public void save(Cart cart) {
		// TODO Auto-generated method stub
	log.debug("Starting of the method save");
	cart.setId(getMaxId());
	sessionFactory.getCurrentSession().save(cart);
	log.debug("Ending of the save method");
			
		
	}

private Long getMaxId() {
	// TODO Auto-generated method stub
	log.debug("Starting of the method getmax");
	
	long maxID=100L;
	try{
		String hql="select max(id) from Cart";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		maxID = (Long)query.uniqueResult();
	}catch(Exception e){
		log.debug("Initial id is 100");
		maxID = 100L;
		e.printStackTrace();
		
	}
	log.debug("Max id:"+maxID);
	
	return maxID+1;
}
@Transactional
	public Long getTotalAmount(String userid) {
		// TODO Auto-generated method stub
		log.debug("Startingof the method gettotal");
		String hql="select sum(price) from Cart where userid="+","+userid+","+"and Status="+"'N'";
		log.debug("hql"+hql);
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		Long sum=(Long) query.uniqueResult();
		log.debug("sum"+sum);
		log.debug("Ending of the method get total");
		return sum;
	}


}
