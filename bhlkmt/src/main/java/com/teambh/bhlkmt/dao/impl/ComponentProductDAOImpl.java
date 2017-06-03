package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.ComponentProductDAO;
import com.teambh.bhlkmt.entity.ComponentProduct;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class ComponentProductDAOImpl implements ComponentProductDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(ComponentProduct transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(ComponentProduct persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public ComponentProduct merge(ComponentProduct detachedInstance) {
		ComponentProduct result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public ComponentProduct findById(int id) {
		ComponentProduct instance = hibernateUtil.findById(id, ComponentProduct.class);
		return instance;
	}

	@Override
	public List<ComponentProduct> fetchAll() {
		List<ComponentProduct> instances = hibernateUtil.fetchAll(ComponentProduct.class);
		return instances;
	}
}
