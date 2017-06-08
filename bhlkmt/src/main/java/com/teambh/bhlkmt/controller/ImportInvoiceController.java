package com.teambh.bhlkmt.controller;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
public class ImportInvoiceController {
	
	@Autowired
	VendorService venService;
	
	@Autowired
	WarehouseService warehouseService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	ImportInvoiceService importService;
	
	@Autowired
	EmployeeService empService;
	
	@Autowired
	ImportInvoiceDetailsService importdetailService;
	
	@RequestMapping("/importinvoice")
	@ResponseBody
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("saleinvoice");
		List<Vendor> vend_list = venService.fetchAll();
		List<Warehouse> ware_list = warehouseService.fetchAll();
		List<Product> pro_list = productService.fetchAll();
		mv.addObject("vend_list", vend_list);
		mv.addObject("ware_list", ware_list);
		mv.addObject("pro_list", pro_list);
		return mv;
	}
	
	@RequestMapping("/createimportinvoice")
	@ResponseBody
	public ModelAndView createpage() {
		ModelAndView mv = new ModelAndView("createimportinvoice");
		List<Vendor> ven_list = venService.fetchAll();
		List<Warehouse> ware_list = warehouseService.fetchAll();
		List<Product> pro_list = productService.fetchAll();
		List<Employee> emp_list = empService.fetchAll();
		mv.addObject("emp_list", emp_list);
		mv.addObject("ven_list", ven_list);
		mv.addObject("ware_list", ware_list);
		mv.addObject("pro_list", pro_list);
		return mv;
	}
	
	@RequestMapping(value = "/importinvoice/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String addimport(@RequestBody ImportInvoice inputData) {
		String response;
		try {
			inputData.setTotal((inputData.getSubtotal().multiply(inputData.getDiscount())).divide( new BigDecimal(100)));
			importService.persist(inputData);
			response = "" + inputData.getImportInvoiceId();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}
	
	// add list of sale detail
	@RequestMapping(value = "/importinvoicedetail/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String addImportinvoicedetail(@RequestBody ImportInvoiceDetails[] inputData) {
		String response = "";
		for(int i = 0; i < inputData.length; i++){
			try {
				importdetailService.persist(inputData[i]);
			} catch (Exception e) {
				System.out.println("=============e" + e.getMessage());
				response = JsonUtil.getFalse();
			}
		}
		response = JsonUtil.getTrue();
		
		return response;
	}

}
