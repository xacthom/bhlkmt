package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.WarehouseTransferDetailsDAO;
import com.teambh.bhlkmt.entity.WarehouseTransferDetails;
import com.teambh.bhlkmt.service.WarehouseTransferDetailsService;

@Service
@Transactional
public class WarehouseTransferDetailsServiceImpl implements WarehouseTransferDetailsService {

	@Autowired
	private WarehouseTransferDetailsDAO WarehouseTransferDetailsDAO;

	@Override
	public void persist(WarehouseTransferDetails transientInstance) {
		WarehouseTransferDetailsDAO.persist(transientInstance);
	}

	@Override
	public void remove(WarehouseTransferDetails persistentInstance) {
		WarehouseTransferDetailsDAO.remove(persistentInstance);
	}

	@Override
	public WarehouseTransferDetails merge(WarehouseTransferDetails detachedInstance) {
		WarehouseTransferDetails result = WarehouseTransferDetailsDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public WarehouseTransferDetails findById(int id) {
		WarehouseTransferDetails instance = WarehouseTransferDetailsDAO.findById(id);
			return instance;
	}

	@Override
	public List<WarehouseTransferDetails> fetchAll() {
		List<WarehouseTransferDetails> instances = WarehouseTransferDetailsDAO.fetchAll();
			return instances;
	}
}
