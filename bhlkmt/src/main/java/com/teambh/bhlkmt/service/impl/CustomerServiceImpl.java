package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.CustomerDAO;
import com.teambh.bhlkmt.entity.Customer;
import com.teambh.bhlkmt.service.CustomerService;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO CustomerDAO;

	@Override
	public void persist(Customer transientInstance) {
		CustomerDAO.persist(transientInstance);
	}

	@Override
	public void remove(Customer persistentInstance) {
		CustomerDAO.remove(persistentInstance);
	}

	@Override
	public Customer merge(Customer detachedInstance) {
		Customer result = CustomerDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public Customer findById(int id) {
		Customer instance = CustomerDAO.findById(id);
			return instance;
	}

	@Override
	public List<Customer> fetchAll() {
		List<Customer> instances = CustomerDAO.fetchAll();
			return instances;
	}
}
