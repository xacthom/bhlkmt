package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.SalesInvoiceDetails;

public interface SalesInvoiceDetailsDAO {
	
	public void persist(SalesInvoiceDetails transientInstance);
	
	public void remove(SalesInvoiceDetails persistentInstance);
	
	public SalesInvoiceDetails merge(SalesInvoiceDetails detachedInstance);
	
	public SalesInvoiceDetails findById(int id);
	
	public List<SalesInvoiceDetails> fetchAll();
}
