package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.WarehouseTransfer;

public interface WarehouseTransferDAO {
	
	public void persist(WarehouseTransfer transientInstance);
	
	public void remove(WarehouseTransfer persistentInstance);
	
	public WarehouseTransfer merge(WarehouseTransfer detachedInstance);
	
	public WarehouseTransfer findById(int id);
	
	public List<WarehouseTransfer> fetchAll();
}
