package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.WarehouseTransfer;

public interface WarehouseTransferService {
	
	public void persist(WarehouseTransfer transientInstance);
	
	public void remove(WarehouseTransfer persistentInstance);
	
	public WarehouseTransfer merge(WarehouseTransfer detachedInstance);
	
	public WarehouseTransfer findById(int id);
	
	public List<WarehouseTransfer> fetchAll();
}
