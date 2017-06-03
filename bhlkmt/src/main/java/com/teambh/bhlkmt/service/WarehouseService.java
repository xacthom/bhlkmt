package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.Warehouse;

public interface WarehouseService {
	
	public void persist(Warehouse transientInstance);
	
	public void remove(Warehouse persistentInstance);
	
	public Warehouse merge(Warehouse detachedInstance);
	
	public Warehouse findById(int id);
	
	public List<Warehouse> fetchAll();
}
