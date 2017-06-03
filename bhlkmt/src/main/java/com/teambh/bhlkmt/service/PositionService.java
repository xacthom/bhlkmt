package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.Position;

public interface PositionService {
	
	public void persist(Position transientInstance);
	
	public void remove(Position persistentInstance);
	
	public Position merge(Position detachedInstance);
	
	public Position findById(int id);
	
	public List<Position> fetchAll();
}
