package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.SalesInvoice;

public interface SalesInvoiceService {
	
	public void persist(SalesInvoice transientInstance);
	
	public void remove(SalesInvoice persistentInstance);
	
	public SalesInvoice merge(SalesInvoice detachedInstance);
	
	public SalesInvoice findById(int id);
	
	public List<SalesInvoice> fetchAll();
}
