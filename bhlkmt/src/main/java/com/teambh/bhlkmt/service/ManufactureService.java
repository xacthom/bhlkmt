package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.Manufacture;

public interface ManufactureService {
	
	public void persist(Manufacture transientInstance);
	
	public void remove(Manufacture persistentInstance);
	
	public Manufacture merge(Manufacture detachedInstance);
	
	public Manufacture findById(int id);
	
	public List<Manufacture> fetchAll();
	
}
