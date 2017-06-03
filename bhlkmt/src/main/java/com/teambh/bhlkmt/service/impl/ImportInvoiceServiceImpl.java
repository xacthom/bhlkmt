package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.ImportInvoiceDAO;
import com.teambh.bhlkmt.entity.ImportInvoice;
import com.teambh.bhlkmt.service.ImportInvoiceService;

@Service
@Transactional
public class ImportInvoiceServiceImpl implements ImportInvoiceService {

	@Autowired
	private ImportInvoiceDAO ImportInvoiceDAO;

	@Override
	public void persist(ImportInvoice transientInstance) {
		ImportInvoiceDAO.persist(transientInstance);
	}

	@Override
	public void remove(ImportInvoice persistentInstance) {
		ImportInvoiceDAO.remove(persistentInstance);
	}

	@Override
	public ImportInvoice merge(ImportInvoice detachedInstance) {
		ImportInvoice result = ImportInvoiceDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public ImportInvoice findById(int id) {
		ImportInvoice instance = ImportInvoiceDAO.findById(id);
			return instance;
	}

	@Override
	public List<ImportInvoice> fetchAll() {
		List<ImportInvoice> instances = ImportInvoiceDAO.fetchAll();
			return instances;
	}
}
