package com.teambh.bhlkmt.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.teambh.bhlkmt.entity.Customer;
import com.teambh.bhlkmt.entity.SalesInvoice;
import com.teambh.bhlkmt.service.CustomerService;
import com.teambh.bhlkmt.service.GenericService;
import com.teambh.bhlkmt.util.JsonUtil;

@RestController
public class CustomerController {

	@Autowired
	CustomerService customerService;

	@Autowired
	GenericService genericService;

	@RequestMapping("/customer")
	public ModelAndView index() {
		return new ModelAndView("customer");
	}

	@Transactional
	@RequestMapping(value = "/customer/get", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String get() {
		String response;
		List<Customer> instances = customerService.fetchAll();
		response = JsonUtil.toJson(instances);
		return response;
	}

	@Transactional
	@RequestMapping(value = "/customer/getById", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody Customer inputData) {
		String response;
		response = JsonUtil.toJson(customerService.findById(inputData.getCustomerId()));
		return response;
	}

	@RequestMapping(value = "/customer/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> add(@RequestBody Customer inputData) {
		String response;
		try {
			Customer instance = genericService.find(inputData.getClass(), "CustomerCode",
					inputData.getCustomerCode());
			if (instance == null) {
				customerService.persist(inputData);
				response = JsonUtil.getTrue();
			} else {
				String error = String.format("Mã %s đã tồn tại!", inputData.getCustomerCode());
				response = JsonUtil.toJson(error);
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@RequestMapping(value = "/customer/edit", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> edit(@RequestBody Customer inputData) {
		String response;
		try {
			Customer instance = genericService.find(inputData.getClass(), "CustomerCode",
					inputData.getCustomerCode());
			if (instance == null || (instance != null && instance.getCustomerId() == inputData.getCustomerId())) {
				customerService.merge(inputData);
				response = JsonUtil.getTrue();
			} else {
				String error = String.format("Mã %s đã tồn tại!", inputData.getCustomerCode());
				response = JsonUtil.toJson(error);
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@Transactional
	@RequestMapping(value = "/customer/del", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> del(@RequestBody Customer inputData) {
		String response;
		try {
			Customer instance = customerService.findById(inputData.getCustomerId());
			if (instance != null) {
				if (instance.getSalesInvoices().isEmpty() == false) {
					response = "Không thể xóa do có Hóa đơn bán hàng tham chiếu đến dữ liệu cần xóa:";
					int count = 0;
					for (SalesInvoice item: instance.getSalesInvoices()){
						response += "\n" + item.getSalesInvoiceCode();
						if (++count == 10) {
							response += "...";
							break;
						}
					}
					return ResponseEntity.ok(response);
				}
				
				customerService.remove(instance);
				response = JsonUtil.getTrue();
			} else {
				String error = String.format("Dữ liệu cần xoá không tồn tại hoặc đã bị xoá trước đó!");
				response = JsonUtil.toJson(error);
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@Transactional
	@RequestMapping(value = "/customer/search", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody String[] inputData) {
		String response = JsonUtil.getFalse();
		String data = inputData[0].trim().toLowerCase();
		String type = inputData[1];
		if (type.equals("1")) {
			List<Customer> instances = customerService.fetchAll().stream()
					.filter(x -> x.getCustomerCode().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("2")) {
			List<Customer> instances = customerService.fetchAll().stream()
					.filter(x -> x.getCustomerName().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		}
		return response;
	}

}
