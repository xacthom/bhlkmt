package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.ComponentProductDAO;
import com.teambh.bhlkmt.entity.ComponentProduct;
import com.teambh.bhlkmt.service.ComponentProductService;

@Service
@Transactional
public class ComponentProductServiceImpl implements ComponentProductService {

	@Autowired
	private ComponentProductDAO ComponentProductDAO;

	@Override
	public void persist(ComponentProduct transientInstance) {
		ComponentProductDAO.persist(transientInstance);
	}

	@Override
	public void remove(ComponentProduct persistentInstance) {
		ComponentProductDAO.remove(persistentInstance);
	}

	@Override
	public ComponentProduct merge(ComponentProduct detachedInstance) {
		ComponentProduct result = ComponentProductDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public ComponentProduct findById(int id) {
		ComponentProduct instance = ComponentProductDAO.findById(id);
			return instance;
	}

	@Override
	public List<ComponentProduct> fetchAll() {
		List<ComponentProduct> instances = ComponentProductDAO.fetchAll();
			return instances;
	}
}
