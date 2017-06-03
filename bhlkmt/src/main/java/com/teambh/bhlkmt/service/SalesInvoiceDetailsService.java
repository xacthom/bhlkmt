package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.SalesInvoiceDetails;

public interface SalesInvoiceDetailsService {
	
	public void persist(SalesInvoiceDetails transientInstance);
	
	public void remove(SalesInvoiceDetails persistentInstance);
	
	public SalesInvoiceDetails merge(SalesInvoiceDetails detachedInstance);
	
	public SalesInvoiceDetails findById(int id);
	
	public List<SalesInvoiceDetails> fetchAll();
}
