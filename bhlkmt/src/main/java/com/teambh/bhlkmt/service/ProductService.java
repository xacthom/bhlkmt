package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.Product;

public interface ProductService {
	
	public void persist(Product transientInstance);
	
	public void remove(Product persistentInstance);
	
	public Product merge(Product detachedInstance);
	
	public Product findById(int id);
	
	public List<Product> fetchAll();
}
