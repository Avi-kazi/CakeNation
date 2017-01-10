package com.niit.cakenationbackend.dao;

import java.util.List;

import com.niit.cakenationbackend.model.User;

public interface UserDAO {
	public List<User> list();

	public User get(String userid);
	
	public boolean save(User user);
	public boolean update(User user);

	public boolean delete(String userid);
	
	public User isValidUser(String userid, String password);

}
