package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.EmployeeDAO;
import com.teambh.bhlkmt.entity.Employee;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(Employee transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(Employee persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public Employee merge(Employee detachedInstance) {
		Employee result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public Employee findById(int id) {
		Employee instance = hibernateUtil.findById(id, Employee.class);
		return instance;
	}

	@Override
	public List<Employee> fetchAll() {
		List<Employee> instances = hibernateUtil.fetchAll(Employee.class);
		return instances;
	}
}
