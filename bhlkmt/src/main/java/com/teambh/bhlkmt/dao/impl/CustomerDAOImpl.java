package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.CustomerDAO;
import com.teambh.bhlkmt.entity.Customer;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(Customer transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(Customer persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public Customer merge(Customer detachedInstance) {
		Customer result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public Customer findById(int id) {
		Customer instance = hibernateUtil.findById(id, Customer.class);
		return instance;
	}

	@Override
	public List<Customer> fetchAll() {
		List<Customer> instances = hibernateUtil.fetchAll(Customer.class);
		return instances;
	}
}
