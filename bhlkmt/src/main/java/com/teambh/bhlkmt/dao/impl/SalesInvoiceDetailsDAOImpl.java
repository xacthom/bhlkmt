package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.SalesInvoiceDetailsDAO;
import com.teambh.bhlkmt.entity.SalesInvoiceDetails;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class SalesInvoiceDetailsDAOImpl implements SalesInvoiceDetailsDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(SalesInvoiceDetails transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(SalesInvoiceDetails persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public SalesInvoiceDetails merge(SalesInvoiceDetails detachedInstance) {
		SalesInvoiceDetails result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public SalesInvoiceDetails findById(int id) {
		SalesInvoiceDetails instance = hibernateUtil.findById(id, SalesInvoiceDetails.class);
		return instance;
	}

	@Override
	public List<SalesInvoiceDetails> fetchAll() {
		List<SalesInvoiceDetails> instances = hibernateUtil.fetchAll(SalesInvoiceDetails.class);
		return instances;
	}
}
