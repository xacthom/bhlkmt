package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.WarehouseDetailsDAO;
import com.teambh.bhlkmt.entity.WarehouseDetails;
import com.teambh.bhlkmt.service.WarehouseDetailsService;

@Service
@Transactional
public class WarehouseDetailsServiceImpl implements WarehouseDetailsService {

	@Autowired
	private WarehouseDetailsDAO WarehouseDetailsDAO;

	@Override
	public void persist(WarehouseDetails transientInstance) {
		WarehouseDetailsDAO.persist(transientInstance);
	}

	@Override
	public void remove(WarehouseDetails persistentInstance) {
		WarehouseDetailsDAO.remove(persistentInstance);
	}

	@Override
	public WarehouseDetails merge(WarehouseDetails detachedInstance) {
		WarehouseDetails result = WarehouseDetailsDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public WarehouseDetails findById(int id) {
		WarehouseDetails instance = WarehouseDetailsDAO.findById(id);
			return instance;
	}

	@Override
	public List<WarehouseDetails> fetchAll() {
		List<WarehouseDetails> instances = WarehouseDetailsDAO.fetchAll();
			return instances;
	}
}
