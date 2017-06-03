package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.EmployeeDAO;
import com.teambh.bhlkmt.entity.Employee;
import com.teambh.bhlkmt.service.EmployeeService;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO EmployeeDAO;

	@Override
	public void persist(Employee transientInstance) {
		EmployeeDAO.persist(transientInstance);
	}

	@Override
	public void remove(Employee persistentInstance) {
		EmployeeDAO.remove(persistentInstance);
	}

	@Override
	public Employee merge(Employee detachedInstance) {
		Employee result = EmployeeDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public Employee findById(int id) {
		Employee instance = EmployeeDAO.findById(id);
			return instance;
	}

	@Override
	public List<Employee> fetchAll() {
		List<Employee> instances = EmployeeDAO.fetchAll();
			return instances;
	}
}
