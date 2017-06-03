package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.GenericDAO;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class GenericDAOImpl implements GenericDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@SuppressWarnings("unchecked")
	@Override
	public <T> T find(Class<T> entityClass, String columnName, String value) {
		String query = String.format("from %s where %s = '%s'", entityClass.getName(), columnName, value);
		List<T> instances = hibernateUtil.fetchAll(query);
		T result;
		if (instances.isEmpty()) {
			result = null;
		} else {
			result = instances.get(0);
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public <T> List<T> search(Class<T> entityClass, String columnName, String value) {
		String query = String.format("from %s where %s like '%s'", entityClass.getName(), columnName, value);
		return hibernateUtil.fetchAll(query);
	}

}
