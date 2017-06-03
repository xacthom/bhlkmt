package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.WarehouseTransferDetailsDAO;
import com.teambh.bhlkmt.entity.WarehouseTransferDetails;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class WarehouseTransferDetailsDAOImpl implements WarehouseTransferDetailsDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(WarehouseTransferDetails transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(WarehouseTransferDetails persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public WarehouseTransferDetails merge(WarehouseTransferDetails detachedInstance) {
		WarehouseTransferDetails result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public WarehouseTransferDetails findById(int id) {
		WarehouseTransferDetails instance = hibernateUtil.findById(id, WarehouseTransferDetails.class);
		return instance;
	}

	@Override
	public List<WarehouseTransferDetails> fetchAll() {
		List<WarehouseTransferDetails> instances = hibernateUtil.fetchAll(WarehouseTransferDetails.class);
		return instances;
	}
}
