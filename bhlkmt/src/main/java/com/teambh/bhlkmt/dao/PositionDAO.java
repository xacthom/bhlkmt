package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.Position;

public interface PositionDAO {
	
	public void persist(Position transientInstance);
	
	public void remove(Position persistentInstance);
	
	public Position merge(Position detachedInstance);
	
	public Position findById(int id);
	
	public List<Position> fetchAll();
}
