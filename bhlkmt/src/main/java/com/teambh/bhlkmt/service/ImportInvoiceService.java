package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.ImportInvoice;

public interface ImportInvoiceService {
	
	public void persist(ImportInvoice transientInstance);
	
	public void remove(ImportInvoice persistentInstance);
	
	public ImportInvoice merge(ImportInvoice detachedInstance);
	
	public ImportInvoice findById(int id);
	
	public List<ImportInvoice> fetchAll();
}
