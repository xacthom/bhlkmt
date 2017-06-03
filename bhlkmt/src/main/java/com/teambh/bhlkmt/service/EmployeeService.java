package com.teambh.bhlkmt.service;

import java.util.List;

import com.teambh.bhlkmt.entity.Employee;

public interface EmployeeService {
	
	public void persist(Employee transientInstance);
	
	public void remove(Employee persistentInstance);
	
	public Employee merge(Employee detachedInstance);
	
	public Employee findById(int id);
	
	public List<Employee> fetchAll();
}
