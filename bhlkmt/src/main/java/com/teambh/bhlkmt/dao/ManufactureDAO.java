package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.Manufacture;

public interface ManufactureDAO {
	
	public void persist(Manufacture transientInstance);
	
	public void remove(Manufacture persistentInstance);
	
	public Manufacture merge(Manufacture detachedInstance);
	
	public Manufacture findById(int id);
	
	public List<Manufacture> fetchAll();
}
