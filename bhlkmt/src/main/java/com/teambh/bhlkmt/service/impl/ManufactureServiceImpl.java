package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.ManufactureDAO;
import com.teambh.bhlkmt.entity.Manufacture;
import com.teambh.bhlkmt.service.ManufactureService;

@Service
@Transactional
public class ManufactureServiceImpl implements ManufactureService {

	@Autowired
	private ManufactureDAO ManufactureDAO;

	@Override
	public void persist(Manufacture transientInstance) {
		ManufactureDAO.persist(transientInstance);
	}

	@Override
	public void remove(Manufacture persistentInstance) {
		ManufactureDAO.remove(persistentInstance);
	}

	@Override
	public Manufacture merge(Manufacture detachedInstance) {
		Manufacture result = ManufactureDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public Manufacture findById(int id) {
		Manufacture instance = ManufactureDAO.findById(id);
			return instance;
	}

	@Override
	public List<Manufacture> fetchAll() {
		List<Manufacture> instances = ManufactureDAO.fetchAll();
			return instances;
	}
}
