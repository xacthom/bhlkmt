package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.WarehouseTransferDAO;
import com.teambh.bhlkmt.entity.WarehouseTransfer;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class WarehouseTransferDAOImpl implements WarehouseTransferDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(WarehouseTransfer transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(WarehouseTransfer persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public WarehouseTransfer merge(WarehouseTransfer detachedInstance) {
		WarehouseTransfer result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public WarehouseTransfer findById(int id) {
		WarehouseTransfer instance = hibernateUtil.findById(id, WarehouseTransfer.class);
		return instance;
	}

	@Override
	public List<WarehouseTransfer> fetchAll() {
		List<WarehouseTransfer> instances = hibernateUtil.fetchAll(WarehouseTransfer.class);
		return instances;
	}
}
