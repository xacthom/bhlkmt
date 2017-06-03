package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.ImportInvoiceDetailsDAO;
import com.teambh.bhlkmt.entity.ImportInvoiceDetails;
import com.teambh.bhlkmt.service.ImportInvoiceDetailsService;

@Service
@Transactional
public class ImportInvoiceDetailsServiceImpl implements ImportInvoiceDetailsService {

	@Autowired
	private ImportInvoiceDetailsDAO ImportInvoiceDetailsDAO;

	@Override
	public void persist(ImportInvoiceDetails transientInstance) {
		ImportInvoiceDetailsDAO.persist(transientInstance);
	}

	@Override
	public void remove(ImportInvoiceDetails persistentInstance) {
		ImportInvoiceDetailsDAO.remove(persistentInstance);
	}

	@Override
	public ImportInvoiceDetails merge(ImportInvoiceDetails detachedInstance) {
		ImportInvoiceDetails result = ImportInvoiceDetailsDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public ImportInvoiceDetails findById(int id) {
		ImportInvoiceDetails instance = ImportInvoiceDetailsDAO.findById(id);
			return instance;
	}

	@Override
	public List<ImportInvoiceDetails> fetchAll() {
		List<ImportInvoiceDetails> instances = ImportInvoiceDetailsDAO.fetchAll();
			return instances;
	}
}
