package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.teambh.bhlkmt.dao.GenericDAO;
import com.teambh.bhlkmt.service.GenericService;

@Service
@Transactional
public class GenericServiceImpl implements GenericService {

	@Autowired
	private GenericDAO genericDAO;

	@Override
	public <T> T find(Class<T> entityClass, String columnName, String value) {
		return genericDAO.find(entityClass, columnName, value);
	}

	@Override
	public <T> List<T> search(Class<T> entityClass, String columnName, String value) {
		return genericDAO.search(entityClass, columnName, value);
	}

	@Override
	public <T> T findByCode(Class<T> entityClass, String value) {
		String entityCode = StringUtils.uncapitalize(entityClass.getSimpleName()) + "Code";
		return genericDAO.find(entityClass, entityCode, value);
	}

}
