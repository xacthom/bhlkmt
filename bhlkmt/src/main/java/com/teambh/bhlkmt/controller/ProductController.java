package com.teambh.bhlkmt.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletContext;

import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.teambh.bhlkmt.entity.ComponentProduct;
import com.teambh.bhlkmt.entity.ImportInvoiceDetails;
import com.teambh.bhlkmt.entity.Product;
import com.teambh.bhlkmt.entity.SalesInvoiceDetails;
import com.teambh.bhlkmt.entity.WarehouseDetails;
import com.teambh.bhlkmt.entity.WarehouseTransferDetails;
import com.teambh.bhlkmt.service.ComponentProductService;
import com.teambh.bhlkmt.service.ComponentTypeService;
import com.teambh.bhlkmt.service.GenericService;
import com.teambh.bhlkmt.service.ProductService;
import com.teambh.bhlkmt.util.JsonUtil;

@RestController
public class ProductController {

	@SuppressWarnings("unused")
	private static final Logger logger = Logger.getLogger(ManufactureController.class);

	@Autowired
	GenericService genericService;

	@Autowired
	ProductService productService;

	@Autowired
	ComponentProductService componentProductService;

	@Autowired
	ComponentTypeService componentTypeService;

	@Autowired
	ServletContext servletContext;

	@RequestMapping("/product")
	public ModelAndView index() {
		return new ModelAndView("product");
	}

	@Transactional
	@RequestMapping(value = "/product/get", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public String get() {
		String response;
		List<Product> instances = productService.fetchAll();
		response = JsonUtil.toJson(instances);
		return response;
	}

	@Transactional
	@RequestMapping(value = "/product/getById", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String getById(@RequestBody Product inputData) {
		String response;
		response = JsonUtil.toJson(productService.findById(inputData.getProductId()));
		return response;
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> add(@RequestBody ComponentProduct inputData) {
		String response;
		try {
			Product instance = genericService.findByCode(Product.class, inputData.getProduct().getProductCode());
			if (instance == null) {
				componentProductService.persist(inputData);
				response = JsonUtil.toJson(inputData.getProductId());
			} else {
				String error = String.format("Mã %s đã tồn tại!", inputData.getProduct().getProductCode());
				response = JsonUtil.toJson(error);
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@RequestMapping(value = "/product/edit", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> edit(@RequestBody ComponentProduct inputData) {
		String response;
		try {
			Product instance = genericService.findByCode(Product.class, inputData.getProduct().getProductCode());
			if (instance != null && instance.getProductId() != inputData.getProductId()) {
				String error = String.format("Mã %s đã tồn tại!", inputData.getProduct().getProductCode());
				response = JsonUtil.toJson(error);
			} else {
				productService.merge(inputData.getProduct());
				componentProductService.merge(inputData);
				response = JsonUtil.toJson(inputData.getProductId());
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(response);
	}

	@Transactional
	@RequestMapping(value = "/product/del", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> del(@RequestBody Product inputData) {
		System.out.println(inputData.getProductId());
		String response;
		try {
			Product instance = productService.findById(inputData.getProductId());
			if (instance != null) {
				List<ImportInvoiceDetails> importInvoiceDetails = instance.getImportInvoiceDetails();
				if (importInvoiceDetails.isEmpty() == false) {
					response = JsonUtil.toJson("Không thể xóa do có Hóa đơn nhập tham chiếu đến dữ liệu cần xóa");
					return ResponseEntity.ok(response);
				}
				List<SalesInvoiceDetails> salesInvoiceDetails = instance.getSalesInvoiceDetails();
				if (salesInvoiceDetails.isEmpty() == false) {
					response = JsonUtil.toJson("Không thể xóa do có Hóa đơn xuất tham chiếu đến dữ liệu cần xóa");
					return ResponseEntity.ok(response);
				}
				List<WarehouseDetails> warehouseDetails = instance.getWarehouseDetails();
				if (warehouseDetails.isEmpty() == false) {
					response = JsonUtil.toJson("Không thể xóa do trong kho còn sản phẩm này");
					return ResponseEntity.ok(response);
				}
				List<WarehouseTransferDetails> warehouseTransferDetails = instance.getWarehouseTransferDetails();
				if (warehouseTransferDetails.isEmpty() == false) {
					response = JsonUtil.toJson("Không thể xóa do có Phiếu chuyển kho tham chiếu đến dữ liệu cần xóa");
					return ResponseEntity.ok(response);
				}

				String imageUrl = instance.getImageUrl();
				if (imageUrl != null && imageUrl.charAt(0) == '.') {
					String webappRoot = servletContext.getRealPath("/");
					File file = new File(webappRoot + imageUrl.substring(1));
					if (file.exists()) {
						file.delete();
					}
				}

				productService.remove(instance);
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
	@RequestMapping(value = "/product/search", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8", produces = "application/json; charset=UTF-8")
	public String getById(@RequestBody String[] inputData) {
		System.out.println(inputData.length);
		String response = JsonUtil.getFalse();
		String data = inputData[0].trim().toLowerCase();
		String type = inputData[1];
		if (type.equals("1")) {
			List<Product> instances = genericService.search(Product.class, "productCode", "%" + data + "%");
			response = JsonUtil.toJson(instances);
		} else if (type.equals("2")) {
			List<Product> instances = genericService.search(Product.class, "productName", "%" + data + "%");
			response = JsonUtil.toJson(instances);
		} else if (type.equals("3")) {
			List<Product> instances = productService.fetchAll().stream().filter(
					x -> x.getComponentProduct().getComponentType().getComponentTypeName().toLowerCase().contains(data))
					.collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("4")) {
			List<Product> instances = productService.fetchAll().stream().filter(
					x -> x.getComponentProduct().getManufacture().getManufactureName().toLowerCase().contains(data))
					.collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		} else if (type.equals("5")) {
			List<Product> instances = productService.fetchAll().stream()
					.filter(x -> x.getComponentProduct().getFeature().toLowerCase().contains(data))
					.collect(Collectors.toList());
			response = JsonUtil.toJson(instances);
		}
		return response;
	}

	@RequestMapping(value = "/product/upFile", method = RequestMethod.POST)
	public ResponseEntity<String> upload(@RequestParam("productId") int productId,
			@RequestParam("uploadFile") MultipartFile uploadFile) {
		String webappRoot = servletContext.getRealPath("/");
		String relativeFolder = File.separator + "resources" + File.separator + "uploaded" + File.separator + "images"
				+ File.separator;
		String nameOfFile = String.format("img%09d.%s", productId,
				FilenameUtils.getExtension(uploadFile.getOriginalFilename()));
		String filename = webappRoot + relativeFolder + nameOfFile;
		String filenameWithoutRoot = "." + relativeFolder + nameOfFile;
		
		try {
			byte[] bytes = uploadFile.getBytes();
			Path path = Paths.get(filename);
			Files.write(path, bytes);

			Product product = productService.findById(productId);
			String imageUrl = product.getImageUrl();
			if (imageUrl != null && imageUrl.charAt(0) == '.') {
				File file = new File(webappRoot + imageUrl.substring(1));
				if (file.exists()) {
					file.delete();
				}
			}
			product.setImageUrl(filenameWithoutRoot);
			productService.merge(product);
		} catch (IOException e) {
			e.printStackTrace();
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Có lỗi xảy ra!");
		}
		return ResponseEntity.ok(JsonUtil.toJson(filenameWithoutRoot));
	}

}
