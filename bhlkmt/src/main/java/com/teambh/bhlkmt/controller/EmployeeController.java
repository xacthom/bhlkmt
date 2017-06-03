package com.teambh.bhlkmt.controller;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.teambh.bhlkmt.entity.*;
import com.teambh.bhlkmt.service.*;
import com.teambh.bhlkmt.util.JsonUtil;

@RestController
public class EmployeeController {	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	PositionService positionService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/employee")
	@ResponseBody
	public ModelAndView employeesIndexPage(){
		return new ModelAndView("employee");
	}
	
	@RequestMapping(value = "/employee/getAllPositions", method = RequestMethod.GET, produces="application/json; charset=UTF-8")
	public String getAllPositions(){
		List<Position> list = positionService.fetchAll();
		String response = JsonUtil.toJson(list);
		return response;
	}

	@Transactional
	@RequestMapping(value = "/employee/getAll", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getAll() throws ParseException {
		String response = null;
		List<Employee> instances = employeeService.fetchAll();
		response = JsonUtil.toJson(instances);
		return response;
	}

	@Transactional
	@RequestMapping(value = "/employee/getById", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String getById(@RequestBody Employee inputData) {
		System.out.println(inputData.getEmployeeId());
		String response;
		response = JsonUtil.toJson(employeeService.findById(inputData.getEmployeeId()));
		return response;
	}

	@Transactional
	@RequestMapping(value = "/employee/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String add(@RequestBody Employee inputData) {
		System.out.println(inputData.toString());
		String response;
		try {
			inputData.setPosition(positionService.findById(inputData.getPosition().getPositionId()));
			
			User newUser = inputData.getUser();
			userService.persist(newUser);
			inputData.setUser(newUser);
			
			employeeService.persist(inputData);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@RequestMapping(value = "/employee/edit", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String edit(@RequestBody Employee inputData) {
		System.out.println(inputData.getEmployeeCode() + inputData.getEmployeeName());
		String response;
		try {
			inputData.setPosition(positionService.findById(inputData.getPosition().getPositionId()));
			inputData.setUser(userService.findById(inputData.getUser().getUserId()));
			
			employeeService.merge(inputData);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@RequestMapping(value = "/employee/del", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String del(@RequestBody Employee inputData) {
		System.out.println(inputData.getEmployeeId());
		String response;
		try {
			inputData = employeeService.findById(inputData.getEmployeeId());
			
			User user = userService.findById(inputData.getUser().getUserId());	
			userService.remove(user);	
			//employeeService.remove(inputData);			
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@Transactional
	@RequestMapping(value = "/employee/search", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String getById(@RequestBody String[] inputData) {
		System.out.println(inputData.length);
		String response = null;
		String data = inputData[0].trim().toLowerCase();
		String type = inputData[1];
		if (type.equals("1")) {
			List<Employee> instances = employeeService.fetchAll().stream()
					.filter(x -> x.getEmployeeCode().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("2")) {
			List<Employee> instances = employeeService.fetchAll().stream()
					.filter(x -> x.getEmployeeName().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("3")) {
			List<Employee> instances = employeeService.fetchAll().stream()
					.filter(x -> x.getPosition().getPositionName().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		}
		return response;
	}

}
