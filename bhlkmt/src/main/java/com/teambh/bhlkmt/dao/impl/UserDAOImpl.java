package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.UserDAO;
import com.teambh.bhlkmt.entity.User;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(User transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(User persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public User merge(User detachedInstance) {
		User result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public User findById(int id) {
		User instance = hibernateUtil.findById(id, User.class);
		return instance;
	}

	@Override
	public List<User> fetchAll() {
		List<User> instances = hibernateUtil.fetchAll(User.class);
		return instances;
	}
}
