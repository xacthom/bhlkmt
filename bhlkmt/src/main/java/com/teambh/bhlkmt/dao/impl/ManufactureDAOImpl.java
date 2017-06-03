package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.ManufactureDAO;
import com.teambh.bhlkmt.entity.Manufacture;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class ManufactureDAOImpl implements ManufactureDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(Manufacture transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(Manufacture persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public Manufacture merge(Manufacture detachedInstance) {
		Manufacture result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public Manufacture findById(int id) {
		Manufacture instance = hibernateUtil.findById(id, Manufacture.class);
		return instance;
	}

	@Override
	public List<Manufacture> fetchAll() {
		List<Manufacture> instances = hibernateUtil.fetchAll(Manufacture.class);
		return instances;
	}
}
