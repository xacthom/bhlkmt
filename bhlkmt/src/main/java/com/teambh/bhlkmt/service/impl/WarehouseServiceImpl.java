package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.WarehouseDAO;
import com.teambh.bhlkmt.entity.Warehouse;
import com.teambh.bhlkmt.service.WarehouseService;

@Service
@Transactional
public class WarehouseServiceImpl implements WarehouseService {

	@Autowired
	private WarehouseDAO WarehouseDAO;

	@Override
	public void persist(Warehouse transientInstance) {
		WarehouseDAO.persist(transientInstance);
	}

	@Override
	public void remove(Warehouse persistentInstance) {
		WarehouseDAO.remove(persistentInstance);
	}

	@Override
	public Warehouse merge(Warehouse detachedInstance) {
		Warehouse result = WarehouseDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public Warehouse findById(int id) {
		Warehouse instance = WarehouseDAO.findById(id);
			return instance;
	}

	@Override
	public List<Warehouse> fetchAll() {
		List<Warehouse> instances = WarehouseDAO.fetchAll();
			return instances;
	}
}
