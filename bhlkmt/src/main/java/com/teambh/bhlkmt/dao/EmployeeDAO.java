package com.teambh.bhlkmt.dao;

import java.util.List;

import com.teambh.bhlkmt.entity.Employee;

public interface EmployeeDAO {
	
	public void persist(Employee transientInstance);
	
	public void remove(Employee persistentInstance);
	
	public Employee merge(Employee detachedInstance);
	
	public Employee findById(int id);
	
	public List<Employee> fetchAll();
}
