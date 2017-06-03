package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.PositionDAO;
import com.teambh.bhlkmt.entity.Position;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class PositionDAOImpl implements PositionDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(Position transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(Position persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public Position merge(Position detachedInstance) {
		Position result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public Position findById(int id) {
		Position instance = hibernateUtil.findById(id, Position.class);
		return instance;
	}

	@Override
	public List<Position> fetchAll() {
		List<Position> instances = hibernateUtil.fetchAll(Position.class);
		return instances;
	}
}
