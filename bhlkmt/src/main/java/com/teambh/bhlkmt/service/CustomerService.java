package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.Customer;

public interface CustomerService {
	
	public void persist(Customer transientInstance);
	
	public void remove(Customer persistentInstance);
	
	public Customer merge(Customer detachedInstance);
	
	public Customer findById(int id);
	
	public List<Customer> fetchAll();
}
