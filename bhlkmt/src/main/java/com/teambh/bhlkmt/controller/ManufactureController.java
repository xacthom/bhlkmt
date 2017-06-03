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

import com.teambh.bhlkmt.entity.*;
import com.teambh.bhlkmt.service.*;
import com.teambh.bhlkmt.util.JsonUtil;

@RestController
public class ManufactureController {

	@Autowired
	ManufactureService manufactureService;

	@Autowired
	GenericService genericService;

	@RequestMapping("/manufacture")
	public ModelAndView index() {
		return new ModelAndView("manufacture");
	}

	@Transactional
	@RequestMapping(value = "/manufacture/get", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String get() {
		String response;
		List<Manufacture> instances = manufactureService.fetchAll();
		response = JsonUtil.toJson(instances);
		return response;
	}

	@Transactional
	@RequestMapping(value = "/manufacture/getById", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody Manufacture inputData) {
		String response;
		response = JsonUtil.toJson(manufactureService.findById(inputData.getManufactureId()));
		return response;
	}

	@RequestMapping(value = "/manufacture/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> add(@RequestBody Manufacture inputData) {
		String response;
		try {
			Manufacture instance = genericService.find(inputData.getClass(), "manufactureCode",
					inputData.getManufactureCode());
			if (instance == null) {
				manufactureService.persist(inputData);
				response = JsonUtil.getTrue();
			} else {
				String error = String.format("Mã %s đã tồn tại!", inputData.getManufactureCode());
				response = JsonUtil.toJson(error);
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@RequestMapping(value = "/manufacture/edit", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> edit(@RequestBody Manufacture inputData) {
		String response;
		try {
			Manufacture instance = genericService.find(inputData.getClass(), "manufactureCode",
					inputData.getManufactureCode());
			if (instance == null || (instance != null && instance.getManufactureId() == inputData.getManufactureId())) {
				manufactureService.merge(inputData);
				response = JsonUtil.getTrue();
			} else {
				String error = String.format("Mã %s đã tồn tại!", inputData.getManufactureCode());
				response = JsonUtil.toJson(error);
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@Transactional
	@RequestMapping(value = "/manufacture/del", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> del(@RequestBody Manufacture inputData) {
		String response;
		try {
			Manufacture instance = manufactureService.findById(inputData.getManufactureId());
			if (instance != null) {
				if (instance.getComponentProducts().isEmpty() == false) {
					response = JsonUtil.toJson("Không thể xóa do có thông tin sản phẩm tham chiếu đến dữ liệu cần xóa");
					return ResponseEntity.ok(response);
				}
				
				manufactureService.remove(instance);
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
	@RequestMapping(value = "/manufacture/search", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody String[] inputData) {
		String response = JsonUtil.getFalse();
		String data = inputData[0].trim().toLowerCase();
		String type = inputData[1];
		if (type.equals("1")) {
			List<Manufacture> instances = manufactureService.fetchAll().stream()
					.filter(x -> x.getManufactureCode().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("2")) {
			List<Manufacture> instances = manufactureService.fetchAll().stream()
					.filter(x -> x.getManufactureName().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		}
		return response;
	}

}
