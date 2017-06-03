package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.ComponentType;

public interface ComponentTypeDAO {
	
	public void persist(ComponentType transientInstance);
	
	public void remove(ComponentType persistentInstance);
	
	public ComponentType merge(ComponentType detachedInstance);
	
	public ComponentType findById(int id);
	
	public List<ComponentType> fetchAll();
}
