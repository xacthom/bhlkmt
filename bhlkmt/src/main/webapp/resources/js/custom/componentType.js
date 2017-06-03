function getData() {
	$.ajax({
		type : "GET",
		url : "./componentType/get",
		dataType : "json",
		success : function(data) {
			loadData(data);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status) {
				alert(jqXHR.responseText);
			} else {
				alert("Có lỗi xảy ra!");
			}
		}
	});
};

function loadData(data) {
	$('#hello').html
	var result = $('#hello');
	result.html("");
	var records = $('#records');
	records.html("Hiển Thị " + data.length + " bản ghi");
	if (data.length > 0) {
		for (var i = 0; i < data.length; i++) {
			var temp = data[i];
			var stt = i + 1;
			result.append("<tr><td>"
							+ stt
							+ "</td>"
							+ "<td hidden> <input type=\"text\" id=\""
							+ temp.componentTypeId
							+ "\"value=\""
							+ temp.componentTypeId
							+ "\"></td>"
							+ "<td>"
							+ temp.componentTypeCode
							+ "</td>"
							+ "<td>"
							+ temp.componentTypeName
							+ "</td>"
							+ "<td class=\"actions\">"
							+ "<a onclick=\"edit("
							+ temp.componentTypeId
							+ ")\"role=\"button\" tabindex=\"0\" class=\"edit text-primary text-uppercase text-strong text-sm mr-10\">Sửa</a>"
							+ "<a role=\"button\" tabindex=\"0\" id=\"delete\" onclick=\"del("
							+ temp.componentTypeId
							+ ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>"
							+ "</td></tr>");
		}
	} else {
		result.append("<tr class=\"odd\"><td valign=\"top\" colspan=\"3\" class=\"dataTables_empty\">.......Không Có Dữ Liệu ....</td></tr>")
	}
};

function edit(id) {
	$('#sectionFormInput').css('display', 'block');
	$('#titleFormInput').html("<strong>Sửa Thông Tin Loại Sản Phẩm</strong>");
	$('#btnSubmit').text("Sửa");
	$('#code').focus();
	$('#success').removeClass("alert alert-success");
	$('#success').text("");
	$('#error').removeClass("alert alert-danger");
	$('#error').text("");
	
	var inputData = {}
	inputData["componentTypeId"] = id;
	
	$.ajax({
		type : "POST",
		url : "./componentType/getById",
		contentType: "application/json; charset=UTF-8",
		data : JSON.stringify(inputData),
		dataType : "json",
		success : function(data) {
			$('#id').val(data.componentTypeId);
			$('#code').val(data.componentTypeCode);
			$('#name').val(data.componentTypeName);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			if (jqXHR.status) {
				alert(jqXHR.responseText);
			} else {
				alert("Có lỗi xảy ra!");
			}
		}
	});
}

function del(id) {
	if (confirm("Bạn có muốn xóa không?") == false) {
		return;
	} else {
		var inputData = {}
		inputData["componentTypeId"] = id;
		
		$.ajax({
			type : "POST",
			url : "./componentType/del",
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
					alert("Có lỗi xảy ra!");
				}
			}
		});
	}
}

$(document).ready(function() {
	$('#refresh').click(function() {
		getData();
	});
	
	$('#refresh').click();

	$('#btnCreate').click(function(e) {
		$('#sectionFormInput').css('display', 'block');
		$('#titleFormInput').html("<strong>Thêm Loại Sản Phẩm</strong>");
		$('#btnSubmit').text("Lưu");
		$('#id').val(0);
		$('#code').val("");
		$('#name').val("");
		$('#code').focus();
		$('#success').removeClass("alert alert-success");
		$('#success').text("");
		$('#error').removeClass("alert alert-danger");
		$('#error').text("");
	})
	
	$("#form3").submit(function(e) {
		if (this.checkValidity()) {
			e.preventDefault();
			var id = $("#id").val();
			
			var inputData = {}
			inputData["componentTypeCode"] = $('#code').val();
			inputData["componentTypeName"] = $('#name').val();

			if (id <= 0) {
				$.ajax({
					type : "POST",
					url : "./componentType/add",
					contentType: "application/json; charset=UTF-8",
					data : JSON.stringify(inputData),
					dataType : "json",
					success : function(data) {
						if (data == true) {
							$('#success').addClass("alert alert-success");
							$('#success').text("Thêm Thành Công");
							$('#error').removeClass("alert alert-danger");
							$('#error').text("");
							$('#refresh').click();
						} else {
							$('#error').addClass("alert alert-danger");
							$('#error').html(data);
							$('#success').removeClass("alert alert-success");
							$('#success').text("");
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						if (jqXHR.status) {
							alert(jqXHR.responseText);
						} else {
							alert("Có lỗi xảy ra!");
						}
					}
				});
			} else {
				inputData["componentTypeId"] = $('#id').val();
				$.ajax({
					type : "POST",
					url : "./componentType/edit",
					contentType: "application/json; charset=UTF-8",
					data : JSON.stringify(inputData),
					dataType : "json",
					success : function(data) {
						if (data == true) {
							$('#success').addClass("alert alert-success");
							$('#success').text("Sửa Thành Công");
							$('#error').removeClass("alert alert-danger");
							$('#error').text("");
							$('#refresh').click();
						} else {
							$('#error').addClass("alert alert-danger");
							$('#error').html(data);
							$('#success').removeClass("alert alert-success");
							$('#success').text("");
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						if (jqXHR.status) {
							alert(jqXHR.responseText);
						} else {
							alert("Có lỗi xảy ra!");
						}
					}
				});
			}
		}
	})
	
	$('#search').click(function(e) {
		var inputData = [$('#searchdata').val(), $('#searchtype').val()];
		
		if (inputData[0] != "") {
			$.ajax({
				type : "POST",
				url : "./componentType/search",
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
						alert("Có lỗi xảy ra!");
					}
				}
			});
		}
	})
	
	$('#searchdata').on('input', function(e) {
		if ($(this).val() == "") {
			getData();
		}
	})
	
	$('#searchdata').keypress(function(e) {
	    if(e.which == 13) {
	    	$('#search').click();
	    }
	})
	
	$('#btnReset').click(function(e) {
		$('#success').removeClass("alert alert-success");
		$('#success').text("");
		$('#error').removeClass("alert alert-danger");
		$('#error').text("");
	})
	
})
