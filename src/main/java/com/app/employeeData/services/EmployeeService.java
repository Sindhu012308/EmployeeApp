package com.app.employeeData.services;

import java.util.List;

import com.app.employeeData.Entity.Employee;

public interface EmployeeService {

	Employee saveEmployee(Employee emp);
	Employee updateEmployee(Employee emp);
	Employee getEmployeeById(int id);
	List<Employee> getAllEmployee();
	void deleteEmployee(Employee emp);
	
}
