package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.VendorDAO;
import com.teambh.bhlkmt.entity.Vendor;
import com.teambh.bhlkmt.service.VendorService;

@Service
@Transactional
public class VendorServiceImpl implements VendorService {

	@Autowired
	private VendorDAO VendorDAO;

	@Override
	public void persist(Vendor transientInstance) {
		VendorDAO.persist(transientInstance);
	}

	@Override
	public void remove(Vendor persistentInstance) {
		VendorDAO.remove(persistentInstance);
	}

	@Override
	public Vendor merge(Vendor detachedInstance) {
		Vendor result = VendorDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public Vendor findById(int id) {
		Vendor instance = VendorDAO.findById(id);
			return instance;
	}

	@Override
	public List<Vendor> fetchAll() {
		List<Vendor> instances = VendorDAO.fetchAll();
			return instances;
	}
}
