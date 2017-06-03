package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.SalesInvoiceDAO;
import com.teambh.bhlkmt.entity.SalesInvoice;
import com.teambh.bhlkmt.service.SalesInvoiceService;

@Service
@Transactional
public class SalesInvoiceServiceImpl implements SalesInvoiceService {

	@Autowired
	private SalesInvoiceDAO SalesInvoiceDAO;

	@Override
	public void persist(SalesInvoice transientInstance) {
		SalesInvoiceDAO.persist(transientInstance);
	}

	@Override
	public void remove(SalesInvoice persistentInstance) {
		SalesInvoiceDAO.remove(persistentInstance);
	}

	@Override
	public SalesInvoice merge(SalesInvoice detachedInstance) {
		SalesInvoice result = SalesInvoiceDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public SalesInvoice findById(int id) {
		SalesInvoice instance = SalesInvoiceDAO.findById(id);
			return instance;
	}

	@Override
	public List<SalesInvoice> fetchAll() {
		List<SalesInvoice> instances = SalesInvoiceDAO.fetchAll();
			return instances;
	}
}
