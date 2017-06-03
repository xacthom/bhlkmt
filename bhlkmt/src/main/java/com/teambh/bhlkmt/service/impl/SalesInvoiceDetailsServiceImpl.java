package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.SalesInvoiceDetailsDAO;
import com.teambh.bhlkmt.entity.SalesInvoiceDetails;
import com.teambh.bhlkmt.service.SalesInvoiceDetailsService;

@Service
@Transactional
public class SalesInvoiceDetailsServiceImpl implements SalesInvoiceDetailsService {

	@Autowired
	private SalesInvoiceDetailsDAO SalesInvoiceDetailsDAO;

	@Override
	public void persist(SalesInvoiceDetails transientInstance) {
		SalesInvoiceDetailsDAO.persist(transientInstance);
	}

	@Override
	public void remove(SalesInvoiceDetails persistentInstance) {
		SalesInvoiceDetailsDAO.remove(persistentInstance);
	}

	@Override
	public SalesInvoiceDetails merge(SalesInvoiceDetails detachedInstance) {
		SalesInvoiceDetails result = SalesInvoiceDetailsDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public SalesInvoiceDetails findById(int id) {
		SalesInvoiceDetails instance = SalesInvoiceDetailsDAO.findById(id);
			return instance;
	}

	@Override
	public List<SalesInvoiceDetails> fetchAll() {
		List<SalesInvoiceDetails> instances = SalesInvoiceDetailsDAO.fetchAll();
			return instances;
	}
}
