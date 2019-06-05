package com.app.employeeData.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.employeeData.Entity.Employee;
import com.app.employeeData.services.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;
	
	public String retriveEmployees(ModelMap map){
		List<Employee> allEmployees = service.getAllEmployee();
		map.addAttribute("allEmployees", allEmployees);
		return "displayEmployees";
	}
	
	@RequestMapping("/Employee")
	public String createNewEmployee() {
		return "createEmployee";
	}
	
	@RequestMapping("/save")
	public String saveEmployee(@ModelAttribute("emp") Employee emp, ModelMap map) {
		Employee empSaved = service.saveEmployee(emp);
		String msg = "Employee data saved with Id: "+ empSaved.getEmpId();
		map.addAttribute("msg", msg);
		return "createEmployee";
	}
	
	@RequestMapping("/Employees")
	public String displayAllEmployees(ModelMap map) {
		List<Employee> allEmployees = service.getAllEmployee();
		map.addAttribute("allEmployees", allEmployees);
		return "displayEmployees";
	}
	
	@RequestMapping("/edit")
	public String editEmpl(@RequestParam("id") int id, ModelMap map) {
		Employee empl = service.getEmployeeById(id);
		map.addAttribute("empl", empl);
		return "updateEmployee";
	}
	@RequestMapping("/updateEmployee")
	public String updateEmp(@ModelAttribute("empData") Employee empData, ModelMap map) {
		service.updateEmployee(empData);
		List<Employee> allEmployees = service.getAllEmployee();
		String mesg = "Employee data is successfully Updated for Employee-ID:"+empData.getEmpId();
		map.addAttribute("allEmployees", allEmployees);
		map.addAttribute("mesg", mesg);
		return "displayEmployees";
	}
	
	@RequestMapping("/delEmployee")
	public String deleteEmp(@RequestParam("id") int id, ModelMap map) {
		Employee emp = service.getEmployeeById(id);
		service.deleteEmployee(emp);
		//List<Employee> allEmployees = service.getAllEmployee();
		//map.addAttribute("allEmployees", allEmployees);
		return retriveEmployees(map);
	}
	
}
