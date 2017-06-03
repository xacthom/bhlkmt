package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.WarehouseDAO;
import com.teambh.bhlkmt.entity.Warehouse;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class WarehouseDAOImpl implements WarehouseDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(Warehouse transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(Warehouse persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public Warehouse merge(Warehouse detachedInstance) {
		Warehouse result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public Warehouse findById(int id) {
		Warehouse instance = hibernateUtil.findById(id, Warehouse.class);
		return instance;
	}

	@Override
	public List<Warehouse> fetchAll() {
		List<Warehouse> instances = hibernateUtil.fetchAll(Warehouse.class);
		return instances;
	}
}
