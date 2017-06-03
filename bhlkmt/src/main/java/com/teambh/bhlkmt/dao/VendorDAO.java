package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.Vendor;

public interface VendorDAO {
	
	public void persist(Vendor transientInstance);
	
	public void remove(Vendor persistentInstance);
	
	public Vendor merge(Vendor detachedInstance);
	
	public Vendor findById(int id);
	
	public List<Vendor> fetchAll();
}
