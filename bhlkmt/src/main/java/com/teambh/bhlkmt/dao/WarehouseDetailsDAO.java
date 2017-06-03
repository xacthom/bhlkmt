package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.WarehouseDetails;

public interface WarehouseDetailsDAO {
	
	public void persist(WarehouseDetails transientInstance);
	
	public void remove(WarehouseDetails persistentInstance);
	
	public WarehouseDetails merge(WarehouseDetails detachedInstance);
	
	public WarehouseDetails findById(int id);
	
	public List<WarehouseDetails> fetchAll();
}
