package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.Customer;

public interface CustomerDAO {
	
	public void persist(Customer transientInstance);
	
	public void remove(Customer persistentInstance);
	
	public Customer merge(Customer detachedInstance);
	
	public Customer findById(int id);
	
	public List<Customer> fetchAll();
}
