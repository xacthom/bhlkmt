package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.ImportInvoiceDetails;

public interface ImportInvoiceDetailsService {
	
	public void persist(ImportInvoiceDetails transientInstance);
	
	public void remove(ImportInvoiceDetails persistentInstance);
	
	public ImportInvoiceDetails merge(ImportInvoiceDetails detachedInstance);
	
	public ImportInvoiceDetails findById(int id);
	
	public List<ImportInvoiceDetails> fetchAll();
}
