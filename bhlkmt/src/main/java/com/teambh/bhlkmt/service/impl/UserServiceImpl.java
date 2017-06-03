package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.UserDAO;
import com.teambh.bhlkmt.entity.User;
import com.teambh.bhlkmt.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO UserDAO;

	@Override
	public void persist(User transientInstance) {
		UserDAO.persist(transientInstance);
	}

	@Override
	public void remove(User persistentInstance) {
		UserDAO.remove(persistentInstance);
	}

	@Override
	public User merge(User detachedInstance) {
		User result = UserDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public User findById(int id) {
		User instance = UserDAO.findById(id);
			return instance;
	}

	@Override
	public List<User> fetchAll() {
		List<User> instances = UserDAO.fetchAll();
			return instances;
	}
}
