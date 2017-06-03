package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.WarehouseDetails;

public interface WarehouseDetailsService {
	
	public void persist(WarehouseDetails transientInstance);
	
	public void remove(WarehouseDetails persistentInstance);
	
	public WarehouseDetails merge(WarehouseDetails detachedInstance);
	
	public WarehouseDetails findById(int id);
	
	public List<WarehouseDetails> fetchAll();
}
