package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.Warehouse;

public interface WarehouseDAO {
	
	public void persist(Warehouse transientInstance);
	
	public void remove(Warehouse persistentInstance);
	
	public Warehouse merge(Warehouse detachedInstance);
	
	public Warehouse findById(int id);
	
	public List<Warehouse> fetchAll();
}
