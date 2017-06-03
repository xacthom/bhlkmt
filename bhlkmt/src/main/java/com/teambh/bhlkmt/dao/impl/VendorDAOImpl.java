package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.VendorDAO;
import com.teambh.bhlkmt.entity.Vendor;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class VendorDAOImpl implements VendorDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(Vendor transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(Vendor persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public Vendor merge(Vendor detachedInstance) {
		Vendor result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public Vendor findById(int id) {
		Vendor instance = hibernateUtil.findById(id, Vendor.class);
		return instance;
	}

	@Override
	public List<Vendor> fetchAll() {
		List<Vendor> instances = hibernateUtil.fetchAll(Vendor.class);
		return instances;
	}
}
