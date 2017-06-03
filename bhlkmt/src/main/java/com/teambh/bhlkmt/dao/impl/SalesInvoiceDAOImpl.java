package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.SalesInvoiceDAO;
import com.teambh.bhlkmt.entity.SalesInvoice;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class SalesInvoiceDAOImpl implements SalesInvoiceDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(SalesInvoice transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(SalesInvoice persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public SalesInvoice merge(SalesInvoice detachedInstance) {
		SalesInvoice result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public SalesInvoice findById(int id) {
		SalesInvoice instance = hibernateUtil.findById(id, SalesInvoice.class);
		return instance;
	}

	@Override
	public List<SalesInvoice> fetchAll() {
		List<SalesInvoice> instances = hibernateUtil.fetchAll(SalesInvoice.class);
		return instances;
	}
}
