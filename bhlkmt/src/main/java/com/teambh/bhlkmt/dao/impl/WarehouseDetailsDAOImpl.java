package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.WarehouseDetailsDAO;
import com.teambh.bhlkmt.entity.WarehouseDetails;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class WarehouseDetailsDAOImpl implements WarehouseDetailsDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(WarehouseDetails transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(WarehouseDetails persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public WarehouseDetails merge(WarehouseDetails detachedInstance) {
		WarehouseDetails result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public WarehouseDetails findById(int id) {
		WarehouseDetails instance = hibernateUtil.findById(id, WarehouseDetails.class);
		return instance;
	}

	@Override
	public List<WarehouseDetails> fetchAll() {
		List<WarehouseDetails> instances = hibernateUtil.fetchAll(WarehouseDetails.class);
		return instances;
	}
}
