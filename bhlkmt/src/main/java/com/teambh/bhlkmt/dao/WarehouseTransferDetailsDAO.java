package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.WarehouseTransferDetails;

public interface WarehouseTransferDetailsDAO {
	
	public void persist(WarehouseTransferDetails transientInstance);
	
	public void remove(WarehouseTransferDetails persistentInstance);
	
	public WarehouseTransferDetails merge(WarehouseTransferDetails detachedInstance);
	
	public WarehouseTransferDetails findById(int id);
	
	public List<WarehouseTransferDetails> fetchAll();
}
