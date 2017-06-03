package com.teambh.bhlkmt.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
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
public class SaleinvoiceController {
	
	@Autowired
	SalesInvoiceService saleService;
	
	@Autowired
	CustomerService cusService;
	
	@Autowired
	WarehouseService warehouseService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	SalesInvoiceDetailsService saledetailService;
	
	@RequestMapping("/saleinvoice")
	@ResponseBody
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("saleinvoice");
		List<Customer> cus_list = cusService.fetchAll();
		List<Warehouse> ware_list = warehouseService.fetchAll();
		List<Product> pro_list = productService.fetchAll();
		mv.addObject("cus_list", cus_list);
		mv.addObject("ware_list", ware_list);
		mv.addObject("pro_list", pro_list);
		return mv;
	}
	
	@RequestMapping("/createsaleinvoice")
	@ResponseBody
	public ModelAndView createpage() {
		ModelAndView mv = new ModelAndView("createsaleinvoice");
		List<Customer> cus_list = cusService.fetchAll();
		List<Warehouse> ware_list = warehouseService.fetchAll();
		List<Product> pro_list = productService.fetchAll();
		mv.addObject("cus_list", cus_list);
		mv.addObject("ware_list", ware_list);
		mv.addObject("pro_list", pro_list);
		return mv;
	}

	@Transactional
	@RequestMapping(value = "/warehouse/getallproduct", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody String getallproduct(int id) throws ParseException {
		String response = null;
		Warehouse warehouse = warehouseService.findById(id);
		List<WarehouseDetails> instances = warehouse.getWarehouseDetails();
		response = JsonUtil.toJson(instances);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/saleinvoice/get", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String get() {
		String response = null;
		List<SalesInvoice> instances = saleService.fetchAll();
		response = JsonUtil.toJson(instances);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/saleinvoice/getSaleList", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getSaleDetail( int id) {
		String response = null;
		SalesInvoice sale = saleService.findById(id);
		List<SalesInvoiceDetails> saleDetail = sale.getSalesInvoiceDetails();
		response = JsonUtil.toJson(saleDetail);
		return response;
	}

	@Transactional
	@RequestMapping(value = "/saleinvoice/getById", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody SalesInvoice inputData) {
		System.out.println(inputData.getSalesInvoiceId());
		String response;
		response = JsonUtil.toJson(saleService.findById(inputData.getSalesInvoiceId()));
		return response;
	}

	@RequestMapping(value = "/saleinvoice/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String add(@RequestBody SalesInvoice inputData) {
		String response;
		try {
			saleService.persist(inputData);
			response = "" + inputData.getSalesInvoiceId();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@RequestMapping(value = "/saleinvoice/edit", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String edit(@RequestBody SalesInvoice inputData) {
		String response;
		try {
			saleService.merge(inputData);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@RequestMapping(value = "/saleinvoice/del", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String del(@RequestBody SalesInvoice inputData) {
		System.out.println(inputData.getSalesInvoiceId());
		String response;
		try {
			inputData = saleService.findById(inputData.getSalesInvoiceId());
			saleService.remove(inputData);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@Transactional
	@RequestMapping(value = "/saleinvoice/search", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody String[] inputData) {
		System.out.println(inputData.length);
		String response = null;
		String data = inputData[0].trim().toLowerCase();
		String type = inputData[1];
		if (type.equals("1")) {
			List<SalesInvoice> instances = saleService.fetchAll().stream()
					.filter(x -> x.getSalesInvoiceCode().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("2")) {
//			List<SalesInvoice> instances = saleService.fetchAll().stream()
//					.filter(x -> x.getSalesInvoiceName().toLowerCase().contains(data)).collect(Collectors.toList());
//			response = JsonUtil.toJson(instances);
		}
		return response;
	}
	
	// add list of sale detail
	@RequestMapping(value = "/saleinvoicedetail/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String addSaleinvoicedetail(@RequestBody SalesInvoiceDetails[] inputData) {
		String response = "";
		for(int i = 0; i < inputData.length; i++){
			try {
				saledetailService.persist(inputData[i]);
			} catch (Exception e) {
				System.out.println("=============e" + e.getMessage());
				response = JsonUtil.getFalse();
			}
		}
		response = JsonUtil.getTrue();
		
		return response;
	}
}
