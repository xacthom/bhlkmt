package com.teambh.bhlkmt.service;

import java.util.List;

public interface GenericService {

	public <T> T find(Class<T> entityClass, String columnName, String value);
	
	public <T> List<T> search(Class<T> entityClass, String columnName, String value);
	
	public <T> T findByCode(Class<T> entityClass, String value);
}
