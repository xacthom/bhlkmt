function getData() {
	$.ajax({
		type : "GET",
		url : "./product/get",
		dataType : "json",
		success : function(data) {
			data = JSOG.decode(data);
			loadData(data);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status) {
				alert(jqXHR.responseText);
			} else {
				alert("Mất kết nối đến máy chủ!");
			}
		}
	});
};

function loadData(data) {
	// load data here
	$('#hello').html
	var result = $('#hello');
	result.html("");
	var records = $('#records');
	records.html("Hiển thị " + data.length + " bản ghi");
	if (data.length > 0) {
		for (var i = 0; i < data.length; i++) {
			var stt = i + 1;
			var temp = data[i];
			if (temp.isActive == true) {
				var active = "<td class=\"col-md-1\"><h5 class=\"text-greensea\">Hoạt Động</h5></td>";
			} else {
				active = "<td class=\"col-md-1\"><h5 class=\"text-red\">Vô Hiệu</h5></td>";
			}
			result.append("<tr><td>"
							+ stt
							+ "</td>"
							+ "<td hidden> <input type=\"text\" id=\""
							+ temp.productId
							+ "\"value=\""
							+ temp.productId
							+ "\"></td>"
							+ "<td>"
							+ temp.productCode
							+ "</td>"
							+ "<td class=\"\">"
							+ temp.productName
							+ "</td>"
							+ "<td class=\"col-md-1\">"
							+ temp.componentProduct.componentType.componentTypeName
							+ "</td>"
							+ "<td class=\"\">"
							+ temp.componentProduct.manufacture.manufactureName
							+ "</td>"
							+ "<td class=\"\">"
							+ temp.componentProduct.feature
							+ "</td>"
							+ active
							+ "<td class=\"actions\">"
							+ "<a role=\"button\" tabindex=\"0\" onclick=\"edit("
							+ temp.productId
							+ ")\" class=\"edit text-primary text-uppercase text-strong text-sm mr-10\">Sửa</a>"
							+ "<a role=\"button\" tabindex=\"0\" id=\"delete\" onclick=\"del("
							+ temp.productId
							+ ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>"
							+ "</td></tr>");
		}
	} else {
		result.append("<tr class=\"odd\"><td valign=\"top\" colspan=\"3\" class=\"dataTables_empty\">.......Không Có Dữ Liệu ....</td></tr>")
	}
};

function del(id) {
	if (confirm("Bạn có muốn xóa không?") == false) {
		return;
	} else {
		var inputData = {}
		inputData["productId"] = id;
		
		$.ajax({
			type : "POST",
			url : "./product/del",
			contentType: "application/json; charset=UTF-8",
			data : JSON.stringify(inputData),
			dataType : "json",
			success : function(data) {
				if (data == true) {
					alert("Xóa Thành Công")
				} else {
					alert(data)
				}
				$('#refresh').click();
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status) {
					alert(jqXHR.responseText);
				} else {
					alert("Mất kết nối đến máy chủ!");
				}
			}
		});
	}
}

function upFile(elementId, productId) {
	var fileUpload = $(elementId).get(0);
	if (fileUpload.files.length != 0) {
		var files = fileUpload.files;
		var data = new FormData();
		data.append("uploadFile", files[0]);
		data.append("productId", productId);
		$.ajax({
			type : "POST",
			url : "./product/upFile",
			contentType : false,
			processData : false,
			data : data,
			enctype : 'multipart/form-data',
			dataType : "json",
			success : function(data) {
				if (data != false) {
					$('#ima').attr("src", data);
				} else {
					alert(data);
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (jqXHR.status) {
					alert(jqXHR.responseText);
				} else {
					alert("Không thể upload file do mất kết nối đến máy chủ!");
				}
			}
		});
	}
}

// fill data in edit model
function edit(id) {
	$("#editFormReset").click();

	var inputData = {}
	inputData["productId"] = id;
	
	getComponentType('#selectComponentType1');
	getManufacture('#selectManufacture1');
	
	$.ajax({
		type : "POST",
		url : "./product/getById",
		contentType: "application/json; charset=UTF-8",
		data : JSON.stringify(inputData),
		dataType : "json",
		success : function(data) {
			// open edit model
			$('#edit').modal('toggle');
			// format date
			// //fill data into edit model
			$("#id1").val(data.productId);
			$("#code1").val(data.productCode);
			$("#name1").val(data.productName);
			$("#price1").val(data.price);
			$("#warrantyMonth1").val(data.warrantyMonth);
			$("#fearture1").val(data.componentProduct.feature);
			$("#selectComponentType1").val(data.componentProduct.componentType.componentTypeId);
			$('#selectComponentType1').trigger('chosen:updated');
			$("#selectManufacture1").val(data.componentProduct.manufacture.manufactureId);
			$('#selectManufacture1').trigger('chosen:updated');
			$("#status").val(data.isActive.toString());
			$('#status').trigger('chosen:updated');
			$("#ima").attr("src", data.imageUrl);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status) {
				alert(jqXHR.responseText);
			} else {
				alert("Mất kết nối đến máy chủ!");
			}
		}
	});

}

function getComponentType(elementId) {
	$.ajax({
		type : "GET",
		url : "./componentType/get",
		dataType : "json",
		success : function(data) {
			loadComponentType(data, elementId);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status) {
				alert(jqXHR.responseText);
			} else {
				alert("Mất kết nối đến máy chủ!");
			}
		}
	});
}

function loadComponentType(data, elementId) {

	var length = data.length;
	if (length == 0)
		return;
	
	var currentValue = $(elementId).val();
	$(elementId).empty();
	
	for (var i = 0; i < length; i++) {
		var value = data[i].componentTypeId;
		var text = data[i].componentTypeCode + " - " + data[i].componentTypeName;
		$(elementId).append($('<option>', {
			value : value,
			text : text
		}));
	}
	
	$(elementId).val(currentValue);
	$(elementId).trigger('chosen:updated');
}


function getManufacture(elementId) {
	$.ajax({
		type : "GET",
		url : "./manufacture/get",
		dataType : "json",
		success : function(data) {
			loadManufacture(data, elementId);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status) {
				alert(jqXHR.responseText);
			} else {
				alert("Mất kết nối đến máy chủ!");
			}
		}
	});
}

function loadManufacture(data, elementId) {

	var length = data.length;
	if (length == 0)
		return;

	var currentValue = $(elementId).val();
	$(elementId).empty();
	
	for (var i = 0; i < length; i++) {
		var value = data[i].manufactureId;
		var text = data[i].manufactureCode + " - " + data[i].manufactureName;
		$(elementId).append($('<option>', {
			value : value,
			text : text
		}));
	}
	
	$(elementId).val(currentValue);
	$(elementId).trigger('chosen:updated');
}

$(document).ready(function() {
	getData();
	
	$('#refresh').click(function() {
		getData();
	});

	$('#createFormReset').click(function() {
		$('#createStatus').removeClass();
		$('#createStatus').text("");
		$('#selectComponentType').val(0);
		$('#selectComponentType').trigger('chosen:updated');
		$('#selectManufacture').val(0);
		$('#selectManufacture').trigger('chosen:updated');
	});

	$('#editFormReset').click(function() {
		$('#editStatus').removeClass();
		$('#editStatus').text("");
		$('#selectComponentType1').val(0);
		$('#selectComponentType1').trigger('chosen:updated');
		$('#selectManufacture1').val(0);
		$('#selectManufacture1').trigger('chosen:updated');
	});
	
	$('#add').click(function() {
		$('#createFormReset').click();
	});
	
	$('#selectComponentType').on('chosen:showing_dropdown', function(e) {
		getComponentType(this);
	});
	
	$('#selectManufacture').on('chosen:showing_dropdown', function(e) {
		getManufacture(this);
	});

	$('#selectComponentType1').on('chosen:showing_dropdown', function(e) {
		getComponentType(this);
	});
	
	$('#selectManufacture1').on('chosen:showing_dropdown', function(e) {
		getManufacture(this);
	});
	
	// gọi create action
	$("#formCreate").submit(function(e) {
		// nếu form đã validate
		if (this.checkValidity()) {
			e.preventDefault();
			
			$('#createStatus').removeClass();
			$('#createStatus').text("");
			
			var componentProduct = {}
			componentProduct['feature'] = $("#fearture").val();
			var componentType = {}
			componentType['componentTypeId'] = $("#selectComponentType").val();
			componentProduct['componentType'] = componentType;
			var manufacture = {}
			manufacture['manufactureId'] = $("#selectManufacture").val();
			componentProduct['manufacture'] = manufacture;
			var product = {}
			product['productCode'] = $("#code").val();
			product['productName'] = $("#name").val();
			product['price'] = $("#price").val();
			product['warrantyMonth'] = $("#warrentmonth").val();
			componentProduct['product'] = product;
			
			$.ajax({
				type : "POST",
				url : "./product/add",
				contentType: "application/json; charset=UTF-8",
				data : JSON.stringify(componentProduct),
				dataType : "json",
				success : function(data) {
					if (data == parseInt(data, 10)) {
						$('#createStatus').addClass("alert alert-success");
						$('#createStatus').text("Thêm thành công");
						upFile("#file", data)
					} else {
						$('#createStatus').addClass("alert alert-danger");
						$('#createStatus').text(data);
					}
					$('#refresh').click();
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status) {
						alert(jqXHR.responseText);
					} else {
						alert("Mất kết nối đến máy chủ!");
					}
				}
			});
		}

	})
	
	// edit form
	$("#formEdit").submit(function(e) {
		// nếu form đã validate
		if (this.checkValidity()) {
			e.preventDefault();

			$('#editStatus').removeClass();
			$('#editStatus').text("");
			
			var componentProduct = {}
			componentProduct['productId'] = $("#id1").val();
			componentProduct['feature'] = $("#fearture1").val();
			var componentType = {}
			componentType['componentTypeId'] = $("#selectComponentType1").val();
			componentProduct['componentType'] = componentType;
			var manufacture = {}
			manufacture['manufactureId'] = $("#selectManufacture1").val();
			componentProduct['manufacture'] = manufacture;
			var product = {}
			product['productId'] = $("#id1").val();
			product['productCode'] = $("#code1").val();
			product['productName'] = $("#name1").val();
			product['price'] = $("#price1").val();
			product['warrantyMonth'] = $("#warrentmonth1").val();
			product['isActive'] = $("#status").val();
			componentProduct['product'] = product;
			
			$.ajax({
				type : "POST",
				url : "./product/edit",
				contentType: "application/json; charset=UTF-8",
				data : JSON.stringify(componentProduct),
				dataType : "json",
				success : function(data) {
					if (data == parseInt(data, 10)) {
						$('#editStatus').addClass("alert alert-success");
						$('#editStatus').text("Sửa thành công");
						upFile("#file1", data);
					} else {
						$('#editStatus').addClass("alert alert-danger");
						$('#editStatus').text(data);
					}
					$('#refresh').click();
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status) {
						alert(jqXHR.responseText);
					} else {
						alert("Mất kết nối đến máy chủ!");
					}
				}
			});
		}
	})

	$('#searchdata').keypress(function(e) {
	    if(e.which == 13) {
	    	$('#search').click();
	    }
	})
	
	$('#search').click(function(e) {
		var inputData = [$('#searchdata').val(), $('#searchtype').val()];
		
		if (inputData[1] == 6) {
			if (inputData[0].toLowerCase() == "vô hiệu") {
				inputData[0] = 0;
			} else inputData[0] = 1;
		}
		
		if (inputData[0] != "") {
			$.ajax({
				type : "POST",
				url : "./product/search",
				contentType: "application/json; charset=UTF-8",
				data : JSON.stringify(inputData),
				dataType : "json",
				success : function(data) {
					loadData(data);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.status) {
						if (jqXHR.r)
						alert(jqXHR.responseText);
					} else {
						alert("Mất kết nối đến máy chủ!");
					}
				}
			});
		}
	})

	$('#searchdata').on('input', function(e) {
		if ($(this).val() == "") {
			getData();
		}
	});
	
})
