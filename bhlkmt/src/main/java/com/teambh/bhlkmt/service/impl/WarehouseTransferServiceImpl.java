package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.WarehouseTransferDAO;
import com.teambh.bhlkmt.entity.WarehouseTransfer;
import com.teambh.bhlkmt.service.WarehouseTransferService;

@Service
@Transactional
public class WarehouseTransferServiceImpl implements WarehouseTransferService {

	@Autowired
	private WarehouseTransferDAO WarehouseTransferDAO;

	@Override
	public void persist(WarehouseTransfer transientInstance) {
		WarehouseTransferDAO.persist(transientInstance);
	}

	@Override
	public void remove(WarehouseTransfer persistentInstance) {
		WarehouseTransferDAO.remove(persistentInstance);
	}

	@Override
	public WarehouseTransfer merge(WarehouseTransfer detachedInstance) {
		WarehouseTransfer result = WarehouseTransferDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public WarehouseTransfer findById(int id) {
		WarehouseTransfer instance = WarehouseTransferDAO.findById(id);
			return instance;
	}

	@Override
	public List<WarehouseTransfer> fetchAll() {
		List<WarehouseTransfer> instances = WarehouseTransferDAO.fetchAll();
			return instances;
	}
}
