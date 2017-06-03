package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.ComponentType;

public interface ComponentTypeService {
	
	public void persist(ComponentType transientInstance);
	
	public void remove(ComponentType persistentInstance);
	
	public ComponentType merge(ComponentType detachedInstance);
	
	public ComponentType findById(int id);
	
	public List<ComponentType> fetchAll();
}
