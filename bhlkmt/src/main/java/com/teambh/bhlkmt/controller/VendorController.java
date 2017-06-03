package com.teambh.bhlkmt.controller;


import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.teambh.bhlkmt.entity.*;
import com.teambh.bhlkmt.service.*;
import com.teambh.bhlkmt.util.JsonUtil;

@RestController
public class VendorController {

	@Autowired
	VendorService vendorService;
	
	@RequestMapping("/vendor")
	@ResponseBody
	public ModelAndView venderIndexPage(){
		return new ModelAndView("vendor");
	}
	
	@RequestMapping(value = "/vendor/get", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody String getAllVendors(){
	    String response = null;
	    List<Vendor> instances = vendorService.fetchAll();
		response = JsonUtil.toJson(instances);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/vendor/getById", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody Vendor inputData) {
		System.out.println(inputData.getVendorId());
		String response;
		response = JsonUtil.toJson(vendorService.findById(inputData.getVendorId()));
		System.out.println(response);
		return response;
	}

	@RequestMapping(value = "/vendor/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String add(@RequestBody Vendor inputData) {
		System.out.println(inputData.toString());
		String response;
		try {
			vendorService.persist(inputData);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@RequestMapping(value = "/vendor/edit", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String edit(@RequestBody Vendor inputData) {
		System.out.println(inputData.getVendorCode() + inputData.getVendorName());
		String response;
		try {
			vendorService.merge(inputData);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@RequestMapping(value = "/vendor/del", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String del(@RequestBody Vendor inputData) {
		System.out.println(inputData.getVendorId());
		String response;
		try {
			inputData = vendorService.findById(inputData.getVendorId());
			vendorService.remove(inputData);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@Transactional
	@RequestMapping(value = "vendor/search", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody String[] inputData) {
		System.out.println(inputData.length);
		String response = null;
		String data = inputData[0].trim().toLowerCase();
		String type = inputData[1];
		if (type.equals("1")) {
			List<Vendor> instances = vendorService.fetchAll().stream()
					.filter(x -> x.getVendorCode().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("2")) {
			List<Vendor> instances = vendorService.fetchAll().stream()
					.filter(x -> x.getVendorName().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		}
		return response;
	}
	
}
