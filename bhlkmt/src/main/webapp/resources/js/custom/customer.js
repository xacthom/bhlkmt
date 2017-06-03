function getData() {
	$.ajax({
		type : "GET",
		url : "./customer/get",
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
			result.append("<tr><td>" + stt + "</td>" +
                    "<td hidden> <input type=\"text\" id=\"" + temp.customerId + "\"value=\"" + temp.customerId + "\"></td>" +
                   "<td>" + temp.customerCode + "</td>" +
                   "<td class=\"col-xs-6 col-sm-3\">" + temp.customerName + "</td>" +
                   "<td>" + temp.email + "</td>" +
                   "<td>" + temp.address + "</td>" +

                   "<td class=\"actions\">" +
                       "<a role=\"button\" tabindex=\"0\" onclick=\"edit(" + temp.customerId + ")\" class=\"edit text-primary text-uppercase text-strong text-sm mr-10\">Sửa</a>" +
                       "<a role=\"button\" tabindex=\"0\" id=\"delete\" onclick=\"del(" + temp.customerId + ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" +
                   "</td></tr>");
		}
	} else {
		result.append("<tr class=\"odd\"><td valign=\"top\" colspan=\"3\" class=\"dataTables_empty\">.......Không Có Dữ Liệu ....</td></tr>")
	}
};

function edit(id) {
	$("#editFormReset").click();

	var inputData = {}
	inputData["customerId"] = id;
	
	$.ajax({
		type : "POST",
		url : "./customer/getById",
		contentType: "application/json; charset=UTF-8",
		data : JSON.stringify(inputData),
		dataType : "json",
		success : function(data) {
			//open edit model
            $('#edit').modal('toggle');
            //format date

            //fill data into edit model
            $("#id1").val(data.customerId);
            $("#code1").val(data.customerCode);
            $("#name1").val(data.customerName);
            $("#address1").val(data.address);
            $("#email1").val(data.email);
            $("#phone1").val(data.phone);
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
		inputData["customerId"] = id;
		
		$.ajax({
			type : "POST",
			url : "./customer/del",
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

$(document).ready(function() {
	getData();
	
	$('#refresh').click(function() {
		getData();
	});

	$('#createFormReset').click(function() {
		$('#createStatus').removeClass();
		$('#createStatus').text("");
	});

	$('#editFormReset').click(function() {
		$('#editStatus').removeClass();
		$('#editStatus').text("");
	});
	
	$('#add').click(function() {
		$('#createFormReset').click();
	});

	// gọi create action
	$("#formCreate").submit(function(e) {
		// nếu form đã validate
		if (this.checkValidity()) {
			e.preventDefault();
			
			$('#createStatus').removeClass();
			$('#createStatus').text("");
			
			var customer = {}
			customer['customerCode'] = $("#code").val();
			customer['customerName'] = $("#name").val();
			customer['address'] = $("#address").val();
			customer['email'] = $("#email").val();
			customer['phone'] = $("#phone").val();
			
			$.ajax({
				type : "POST",
				url : "./customer/add",
				contentType: "application/json; charset=UTF-8",
				data : JSON.stringify(customer),
				dataType : "json",
				success : function(data) {
					if (data == true) {
						$('#createStatus').addClass("alert alert-success");
						$('#createStatus').text("Thêm thành công");
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

			var customer = {}
			customer['customerId'] = $("#id1").val(),
			customer['customerCode'] = $("#code1").val();
			customer['customerName'] = $("#name1").val();
			customer['address'] = $("#address1").val();
			customer['email'] = $("#email1").val();
			customer['phone'] = $("#phone1").val();
			
			$.ajax({
				type : "POST",
				url : "./customer/edit",
				contentType: "application/json; charset=UTF-8",
				data : JSON.stringify(customer),
				dataType : "json",
				success : function(data) {
					if (data == true) {
						$('#editStatus').addClass("alert alert-success");
						$('#editStatus').text("Sửa thành công");
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
		
		if (inputData[0] != "") {
			$.ajax({
				type : "POST",
				url : "./customer/search",
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
