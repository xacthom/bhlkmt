package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.ImportInvoice;

public interface ImportInvoiceDAO {
	
	public void persist(ImportInvoice transientInstance);
	
	public void remove(ImportInvoice persistentInstance);
	
	public ImportInvoice merge(ImportInvoice detachedInstance);
	
	public ImportInvoice findById(int id);
	
	public List<ImportInvoice> fetchAll();
}
