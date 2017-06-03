package com.teambh.bhlkmt.dao;

import java.util.List;

public interface GenericDAO {

	public <T> T find(Class<T> entityClass, String columnName, String value);
	
	public <T> List<T> search(Class<T> entityClass, String columnName, String value);
} 
