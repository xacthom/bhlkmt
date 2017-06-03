package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.WarehouseTransferDetails;

public interface WarehouseTransferDetailsService {
	
	public void persist(WarehouseTransferDetails transientInstance);
	
	public void remove(WarehouseTransferDetails persistentInstance);
	
	public WarehouseTransferDetails merge(WarehouseTransferDetails detachedInstance);
	
	public WarehouseTransferDetails findById(int id);
	
	public List<WarehouseTransferDetails> fetchAll();
}
