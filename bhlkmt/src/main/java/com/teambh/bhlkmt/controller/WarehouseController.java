package com.teambh.bhlkmt.controller;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
public class WarehouseController {	
	@Autowired
	WarehouseService warehouseService;
	
	@Autowired
	WarehouseDetailsService warehouseDetailsService;
	
	@Autowired
	WarehouseTransferService warehouseTransferService;
	
	@Autowired
	WarehouseTransferDetailsService warehouseTransferDetailsService;
	
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/warehouse")
	@ResponseBody
	public ModelAndView warehouseIndexPage(){
		return new ModelAndView("warehouse");
	}
	
	@RequestMapping("/warehousetransfer")
	@ResponseBody
	public ModelAndView warehousetransferIndexPage(){
		return new ModelAndView("warehousetransfer");
	}

	@Transactional
	@RequestMapping(value = "/warehouse/getAll", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getAll() throws ParseException {
		String response = null;
		List<Warehouse> instances = warehouseService.fetchAll();
		
		for (Warehouse warehouse : instances) {
			List<WarehouseDetails> details = warehouse.getWarehouseDetails();
			int total = 0;
			for (WarehouseDetails warehouseDetails : details) {
				total += warehouseDetails.getQuantity();
			}
			warehouse.setCurrentQuantity(total);
		}
		
		response = JsonUtil.toJson(instances);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/warehouse/getAllManagers", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getAllManagers() throws ParseException {
		String response = null;
		List<Employee> instances = employeeService.fetchAll();
		response = JsonUtil.toJson(instances);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/warehouse/getWarehouseDetail", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getProductDetail(int id) throws ParseException {
		String response = null;
		Warehouse warehouse = warehouseService.findById(id);
		List<WarehouseDetails> instances = warehouse.getWarehouseDetails();
		response = JsonUtil.toJson(instances);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/warehouse/getImportInvoicesDetail", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getImportInvoicesDetail(int id) throws ParseException {
		String response = null;
		Warehouse warehouse = warehouseService.findById(id);
		List<ImportInvoice> instances = warehouse.getImportInvoices();
		response = JsonUtil.toJson(instances);
		return response;
	}

	@Transactional
	@RequestMapping(value = "/warehouse/getById", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String getById(@RequestBody Warehouse inputData) {
		System.out.println(inputData.getWarehouseId());
		String response;
		response = JsonUtil.toJson(warehouseService.findById(inputData.getWarehouseId()));
		return response;
	}

	@Transactional
	@RequestMapping(value = "/warehouse/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String add(@RequestBody Warehouse inputData) {
		System.out.println(inputData.toString());
		String response;
		try {			
			warehouseService.persist(inputData);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}
	
	public class WarehouseTransferView implements java.io.Serializable {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		public WarehouseTransfer wahouseTransfer;
		public int totalProducts;
	}
	
	@Transactional
	@RequestMapping(value = "/warehouse/getAllWarehouseTransfer", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getAllWarehouseTransfer() throws ParseException {
		String response = null;
		List<WarehouseTransfer> instances = warehouseTransferService.fetchAll();
		List<WarehouseTransferView> warehouseTransferView = new ArrayList<WarehouseTransferView>();
		for (WarehouseTransfer item : instances) {
			Hibernate.initialize(item.getEmployee());
			int total = 0;
			for (WarehouseTransferDetails warehouseTransferDetails : item.getWarehouseTransferDetails()) {
				total += warehouseTransferDetails.getQuantity();
			}
			WarehouseTransferView temp = new WarehouseTransferView();
			temp.wahouseTransfer = item;
			temp.totalProducts = total;
			warehouseTransferView.add(temp);
		}
		response = JsonUtil.toJson(warehouseTransferView);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/warehouse/getWarehouseTransferDetail", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getWarehouseTransferDetail(int id) throws ParseException {
		String response = null;
		WarehouseTransfer warehouse = warehouseTransferService.findById(id);
		List<WarehouseTransferDetails> instances = warehouse.getWarehouseTransferDetails();
		for (WarehouseTransferDetails item : instances) {
			Hibernate.initialize(item.getProduct());
		}
		response = JsonUtil.toJson(instances);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/warehouse/getWarehouseTransferProductQuantity", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String getWarehouseTransferProductQuantity(int id) throws ParseException {
		String response = null;
		WarehouseTransfer warehouse = warehouseTransferService.findById(id);
		List<WarehouseTransferDetails> instances = warehouse.getWarehouseTransferDetails();
		int total = 0;
		for (WarehouseTransferDetails warehouseTransferDetails : instances) {
			total += warehouseTransferDetails.getQuantity();
		}
		response = Integer.toString(total);
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/warehouse/addWarehouseTransfer", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String addWarehouseTransfer(@RequestBody WarehouseTransfer inputData) {
		System.out.println(inputData.toString());
		String response;
		try {			
			warehouseTransferService.persist(inputData);
			response = inputData.getWarehouseTransferId().toString();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}
	
	@Transactional
	@RequestMapping(value = "/warehouse/addWarehouseTransferDetail", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String addWarehouseTransferDetail(@RequestBody List<WarehouseTransferDetails> inputData) {
		String response;
		try {
			WarehouseTransferDetails firstDetail = inputData.get(0);
			WarehouseTransfer baseWarehouseTransfer = warehouseTransferService.findById(firstDetail.getWarehouseTransfer().getWarehouseTransferId());
			Warehouse originWarehouse = baseWarehouseTransfer.getWarehouseOrigin();
			Warehouse targetWarehouse = baseWarehouseTransfer.getWarehouseTarget();
			
			List<WarehouseDetails> originDetails = originWarehouse.getWarehouseDetails();
			List<WarehouseDetails> targetDetails = targetWarehouse.getWarehouseDetails();
			
			for (WarehouseTransferDetails warehouseTransferDetails : inputData) {
				for (WarehouseDetails warehouseDetails : originDetails) {
					if(warehouseDetails.getProduct().getProductId() == warehouseTransferDetails.getProduct().getProductId()){
						int newQuantity = warehouseDetails.getQuantity() - warehouseTransferDetails.getQuantity();
						warehouseDetails.setQuantity(newQuantity);
						warehouseDetailsService.merge(warehouseDetails);
						originDetails.remove(warehouseDetails);
						break;
					}
				}
				
				boolean isProductExist = false;
				for (WarehouseDetails warehouseDetails : targetDetails) {
					if(warehouseDetails.getProduct().getProductId() == warehouseTransferDetails.getProduct().getProductId()){
						int newQuantity = warehouseDetails.getQuantity() + warehouseTransferDetails.getQuantity();
						warehouseDetails.setQuantity(newQuantity);
						warehouseDetailsService.merge(warehouseDetails);
						targetDetails.remove(warehouseDetails);
						isProductExist = true;
						break;
					}
				}
				
				if(isProductExist == false){
					WarehouseDetails newDetails = new WarehouseDetails(warehouseTransferDetails.getProduct(), warehouseTransferDetails.getQuantity(), targetWarehouse);
					warehouseDetailsService.persist(newDetails);
				}
				
				warehouseTransferDetailsService.persist(warehouseTransferDetails);
			}
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@RequestMapping(value = "/warehouse/edit", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String edit(@RequestBody Warehouse inputData) {
		String response;
		try {			
			Warehouse wh = warehouseService.findById(inputData.getWarehouseId());
			
			wh.setWarehouseCode(inputData.getWarehouseCode());
			wh.setWarehouseName(inputData.getWarehouseName());
			wh.setMaxQuantity(inputData.getMaxQuantity());
			wh.setCurrentQuantity(inputData.getCurrentQuantity());
			wh.setAddress(inputData.getAddress());
			wh.setPhone(inputData.getPhone());
			wh.setFax(inputData.getFax());
			wh.setDescription(inputData.getDescription());
			wh.setIsActive(inputData.isIsActive());
			
			Employee manager = employeeService.findById(inputData.getManager().getEmployeeId());
			wh.setManager(manager);
			warehouseService.merge(wh);
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@RequestMapping(value = "/warehouse/del", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String del(@RequestBody Warehouse inputData) {
		String response;
		try {
			inputData = warehouseService.findById(inputData.getWarehouseId());	
			warehouseService.remove(inputData);			
			response = JsonUtil.getTrue();
		} catch (Exception e) {
			response = JsonUtil.getFalse();
		}
		return response;
	}

	@Transactional
	@RequestMapping(value = "/warehouse/search", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String getById(@RequestBody String[] inputData) {
		System.out.println(inputData.length);
		String response = null;
		String data = inputData[0].trim().toLowerCase();
		String type = inputData[1];
		
		if (type.equals("1")) { //Mã Kho
			List<Warehouse> instances = warehouseService.fetchAll().stream()
					.filter(x -> x.getWarehouseCode().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("2")) { //Tên Kho
			List<Warehouse> instances = warehouseService.fetchAll().stream()
					.filter(x -> x.getWarehouseName().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("3")) { //Quản Lý
			List<Warehouse> instances = warehouseService.fetchAll().stream()
					.filter(x -> x.getManager().getEmployeeName().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("4")) { //Địa Chỉ
			List<Warehouse> instances = warehouseService.fetchAll().stream()
					.filter(x -> x.getAddress().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("5")) { //Trạng Thái			
			List<Warehouse> instances = warehouseService.fetchAll().stream()
					.filter(x -> (x.isIsActive() ? "true" : "false").toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		}
		
		return response;
	}

}
