package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.PositionDAO;
import com.teambh.bhlkmt.entity.Position;
import com.teambh.bhlkmt.service.PositionService;

@Service
@Transactional
public class PositionServiceImpl implements PositionService {

	@Autowired
	private PositionDAO PositionDAO;

	@Override
	public void persist(Position transientInstance) {
		PositionDAO.persist(transientInstance);
	}

	@Override
	public void remove(Position persistentInstance) {
		PositionDAO.remove(persistentInstance);
	}

	@Override
	public Position merge(Position detachedInstance) {
		Position result = PositionDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public Position findById(int id) {
		Position instance = PositionDAO.findById(id);
			return instance;
	}

	@Override
	public List<Position> fetchAll() {
		List<Position> instances = PositionDAO.fetchAll();
			return instances;
	}
}
