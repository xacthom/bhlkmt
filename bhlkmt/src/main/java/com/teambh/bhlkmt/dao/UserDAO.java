package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.User;

public interface UserDAO {
	
	public void persist(User transientInstance);
	
	public void remove(User persistentInstance);
	
	public User merge(User detachedInstance);
	
	public User findById(int id);
	
	public List<User> fetchAll();
}
