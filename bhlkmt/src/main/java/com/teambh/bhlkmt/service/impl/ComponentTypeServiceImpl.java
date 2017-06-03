package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.ComponentTypeDAO;
import com.teambh.bhlkmt.entity.ComponentType;
import com.teambh.bhlkmt.service.ComponentTypeService;

@Service
@Transactional
public class ComponentTypeServiceImpl implements ComponentTypeService {

	@Autowired
	private ComponentTypeDAO ComponentTypeDAO;

	@Override
	public void persist(ComponentType transientInstance) {
		ComponentTypeDAO.persist(transientInstance);
	}

	@Override
	public void remove(ComponentType persistentInstance) {
		ComponentTypeDAO.remove(persistentInstance);
	}

	@Override
	public ComponentType merge(ComponentType detachedInstance) {
		ComponentType result = ComponentTypeDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public ComponentType findById(int id) {
		ComponentType instance = ComponentTypeDAO.findById(id);
			return instance;
	}

	@Override
	public List<ComponentType> fetchAll() {
		List<ComponentType> instances = ComponentTypeDAO.fetchAll();
			return instances;
	}
}
