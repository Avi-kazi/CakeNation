package com.niit.cakenationbackend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.cakenationbackend.model.Order;
@Repository("orderDao")
public class OrderDAOImpl implements OrderDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public OrderDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public  OrderDAOImpl() {
		// TODO Auto-generated constructor stub
	}
	@Transactional
	public List<Order> list(String userid) {
		// TODO Auto-generated method stub
		String hql = "from Order where userID=" + "'" + userid + "'  and status = " + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
     	List<Order> list = (List<Order>) query.list();

			return list;
	}
	@Transactional
	public Order get(String userid) {
		// TODO Auto-generated method stub
		String hql = "from Order where userID=" + "'" + userid + "'  and status = " + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Order> list = (List<Order>) query.list();

		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}
	@Transactional
	public void saveOrUpdate(Order order) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(order);
		
	}
	@Transactional
	public String delete(String userid) {
		// TODO Auto-generated method stub
		Order order = new Order();
		order.setUserid(userid);
		try {
			sessionFactory.getCurrentSession().delete(order);
		} catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();

		}
		return null;
	}
	@Transactional
	public Long getTotalAmount(String userid) {
		// TODO Auto-generated method stub
		String hql = "select sum(price) from Order where userID=" + "'" + userid + "' "
				+ "  and status = " + "'N'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
		Long sum =  (Long) query.uniqueResult();
		return sum;
	}

}
