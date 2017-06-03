package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.ComponentProduct;

public interface ComponentProductService {
	
	public void persist(ComponentProduct transientInstance);
	
	public void remove(ComponentProduct persistentInstance);
	
	public ComponentProduct merge(ComponentProduct detachedInstance);
	
	public ComponentProduct findById(int id);
	
	public List<ComponentProduct> fetchAll();
}
