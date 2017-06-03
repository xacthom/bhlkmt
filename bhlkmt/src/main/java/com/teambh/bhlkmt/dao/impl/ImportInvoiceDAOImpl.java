package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.ImportInvoiceDAO;
import com.teambh.bhlkmt.entity.ImportInvoice;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class ImportInvoiceDAOImpl implements ImportInvoiceDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(ImportInvoice transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(ImportInvoice persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public ImportInvoice merge(ImportInvoice detachedInstance) {
		ImportInvoice result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public ImportInvoice findById(int id) {
		ImportInvoice instance = hibernateUtil.findById(id, ImportInvoice.class);
		return instance;
	}

	@Override
	public List<ImportInvoice> fetchAll() {
		List<ImportInvoice> instances = hibernateUtil.fetchAll(ImportInvoice.class);
		return instances;
	}
}
