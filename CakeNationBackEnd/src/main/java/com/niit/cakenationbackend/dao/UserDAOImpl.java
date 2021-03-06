package com.niit.cakenationbackend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.cakenationbackend.model.User;

@Repository("userDao")
public class UserDAOImpl implements UserDAO{
	Logger log = LoggerFactory.getLogger(UserDAOImpl.class);
	 
	@Autowired
	private SessionFactory sessionFactory;
	public UserDAOImpl(SessionFactory sessionFactory) {
		try {
			this.sessionFactory = sessionFactory;
		} catch (Exception e) {
			log.error(" Unable to connect to db");
			e.printStackTrace();
		}
	}
	@Transactional
	public List<User> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}
	@Transactional
	public User get(String userid) {
		// TODO Auto-generated method stub
		return (User) sessionFactory.getCurrentSession().get(User.class, userid);
	}
	
	@Transactional
	public boolean delete(String userid) {
		// TODO Auto-generated method stub
		try {
			User user = new User();
			user.setUserid(userid);
			sessionFactory.getCurrentSession().delete(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	@Transactional
	public User isValidUser(String userid, String password) {
		// TODO Auto-generated method stub
		String hql = "from User where userid= " +"'"+userid+"'"+" and " + " password =" +"'"+ password+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return (User)query.uniqueResult();
	}
	@Transactional
	public boolean save(User user) {
		// TODO Auto-generated method stub
		
		try {
			sessionFactory.getCurrentSession().save(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public boolean update(User user) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	@Transactional
	public boolean saveOrUpdate(User user) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
}
}
