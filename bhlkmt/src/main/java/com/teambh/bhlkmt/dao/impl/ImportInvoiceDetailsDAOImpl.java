package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.ImportInvoiceDetailsDAO;
import com.teambh.bhlkmt.entity.ImportInvoiceDetails;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class ImportInvoiceDetailsDAOImpl implements ImportInvoiceDetailsDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(ImportInvoiceDetails transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(ImportInvoiceDetails persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public ImportInvoiceDetails merge(ImportInvoiceDetails detachedInstance) {
		ImportInvoiceDetails result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public ImportInvoiceDetails findById(int id) {
		ImportInvoiceDetails instance = hibernateUtil.findById(id, ImportInvoiceDetails.class);
		return instance;
	}

	@Override
	public List<ImportInvoiceDetails> fetchAll() {
		List<ImportInvoiceDetails> instances = hibernateUtil.fetchAll(ImportInvoiceDetails.class);
		return instances;
	}
}
