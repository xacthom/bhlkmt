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
public class ComponentTypeController {

	@Autowired
	ComponentTypeService componentTypeService;

	@Autowired
	GenericService genericService;

	@RequestMapping("/componentType")
	public ModelAndView index() {
		return new ModelAndView("componentType");
	}

	@Transactional
	@RequestMapping(value = "/componentType/get", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String get() {
		String response;
		List<ComponentType> instances = componentTypeService.fetchAll();
		response = JsonUtil.toJson(instances);
		return response;
	}

	@Transactional
	@RequestMapping(value = "/componentType/getById", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody ComponentType inputData) {
		String response;
		response = JsonUtil.toJson(componentTypeService.findById(inputData.getComponentTypeId()));
		return response;
	}

	@RequestMapping(value = "/componentType/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> add(@RequestBody ComponentType inputData) {
		String response;
		try {
			ComponentType instance = genericService.find(inputData.getClass(), "ComponentTypeCode",
					inputData.getComponentTypeCode());
			if (instance == null) {
				componentTypeService.persist(inputData);
				response = JsonUtil.getTrue();
			} else {
				String error = String.format("Mã %s đã tồn tại!", inputData.getComponentTypeCode());
				response = JsonUtil.toJson(error);
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@RequestMapping(value = "/componentType/edit", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> edit(@RequestBody ComponentType inputData) {
		String response;
		try {
			ComponentType instance = genericService.find(inputData.getClass(), "ComponentTypeCode",
					inputData.getComponentTypeCode());
			if (instance == null || (instance != null && instance.getComponentTypeId() == inputData.getComponentTypeId())) {
				componentTypeService.merge(inputData);
				response = JsonUtil.getTrue();
			} else {
				String error = String.format("Mã %s đã tồn tại!", inputData.getComponentTypeCode());
				response = JsonUtil.toJson(error);
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@Transactional
	@RequestMapping(value = "/componentType/del", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> del(@RequestBody ComponentType inputData) {
		String response;
		try {
			ComponentType instance = componentTypeService.findById(inputData.getComponentTypeId());
			if (instance != null) {
				if (instance.getComponentProducts().isEmpty() == false) {
					response = JsonUtil.toJson("Không thể xóa do có thông tin sản phẩm tham chiếu đến dữ liệu cần xóa");
					return ResponseEntity.ok(response);
				}
				
				componentTypeService.remove(instance);
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
	@RequestMapping(value = "/componentType/search", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String getById(@RequestBody String[] inputData) {
		String response = JsonUtil.getFalse();
		String data = inputData[0].trim().toLowerCase();
		String type = inputData[1];
		if (type.equals("1")) {
			List<ComponentType> instances = componentTypeService.fetchAll().stream()
					.filter(x -> x.getComponentTypeCode().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("2")) {
			List<ComponentType> instances = componentTypeService.fetchAll().stream()
					.filter(x -> x.getComponentTypeName().toLowerCase().contains(data)).collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		}
		return response;
	}

}
