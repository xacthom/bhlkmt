package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.ComponentTypeDAO;
import com.teambh.bhlkmt.entity.ComponentType;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class ComponentTypeDAOImpl implements ComponentTypeDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(ComponentType transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(ComponentType persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public ComponentType merge(ComponentType detachedInstance) {
		ComponentType result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public ComponentType findById(int id) {
		ComponentType instance = hibernateUtil.findById(id, ComponentType.class);
		return instance;
	}

	@Override
	public List<ComponentType> fetchAll() {
		List<ComponentType> instances = hibernateUtil.fetchAll(ComponentType.class);
		return instances;
	}
}
