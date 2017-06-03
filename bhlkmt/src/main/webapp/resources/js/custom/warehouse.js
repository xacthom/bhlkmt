$(window).load(function () {
    abc();
    xyz();
    
    $('#dateTransfer2').val(ConvertToDate(new Date()));
});

function abc(){
	var url = window.location;
    $.ajax({
        type: "GET",
    	url: "./warehouse/getAll",
    	dataType: 'json',
        success: function (result) {
        	result = JSOG.decode(result);
            loadData(result);
        },
        error: function (result) {
            console.log("object", result);
        }
    });
};

function xyz(){
	$.ajax({
        type: "GET",
    	url: "./warehouse/getAllManagers",
    	contentType: "application/json; charset=utf-8",
    	dataType: 'json',
        success: function (result) {
        	var managers = $('#empId');
        	var managers1 = $('#empId1');
        	var managers2 = $('#empId2');
        	for(var i = 0;i < result.length;i++){
        		var temp = result[i];
        		managers.append("<option value="+temp.employeeId+">"+temp.employeeName+"</option>");
        		managers1.append("<option value="+temp.employeeId+">"+temp.employeeName+"</option>");
        		managers2.append("<option value="+temp.employeeId+">"+temp.employeeName+"</option>");
        	}
        	managers.trigger("chosen:updated");
        	managers1.trigger("chosen:updated");
        	managers2.trigger("chosen:updated");
        },
        error: function (result) {
        }
    });	
}

function loadData(data) {
    //load data here
    $('#hello').html
    var result = $('#hello');
    result.html("");
    var records = $('#records');
    records.html("Hiển thị " + data.length + " bản ghi");
    if (data.length > 0) {  
    	
    	//replaceAllUUIDkey(data, ["manager"]);
    	
        for (var i = 0; i < data.length ; i++) {
            var temp = data[i];
            var stt = i + 1;
            
            if (typeof temp.manager != 'object') {
            	var listManager = getObjects(data, data[0].manager["@UUID"], temp.manager);
            }
            
            if (temp.isActive == true) {
                var active = "<td class=\"col-md-1\"><h5 class=\"text-greensea\">Hoạt Động</h5></td>";
            }
            else {
                active = "<td class=\"col-md-1\"><h5 class=\"text-red\">Vô Hiệu</h5></td>";
            }
            result.append("<tr><td>" + stt + "</td>" +
                                 "<td hidden> <input type=\"text\" id=\"" + temp.warehouseId + "\"value=\"" + temp.warehouseId + "\"></td>" +
                                 "<td>" + temp.warehouseCode + "</td>" +
                                 "<td>" + temp.warehouseName + "</td>" +
                                 "<td>" + temp.manager.employeeName + "</td>" +
                                 "<td>" + temp.address + "</td>" +
                                 "<td>" + temp.currentQuantity + "</td>" +
                                 active +
                                 "<td class=\"actions\">" +
                                      "<a role=\"button\" tabindex=\"0\" onclick=\"Edit(" + temp.warehouseId + ")\" class=\"edit text-primary text-uppercase text-strong text-sm mr-10\">Sửa</a>" +
                                      "<a role=\"button\" tabindex=\"0\" id=\"delete\" onclick=\"Detail(\'" + temp.warehouseId + "\',\'" + temp.warehouseName + "\',\'" + temp.warehouseCode +
                                      "\')\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xem</a>" +
                                      "<a role=\"button\" tabindex=\"0\" onclick=\"Transfer(\'" + temp.warehouseId + "\',\'" + temp.warehouseName + "\',\'" + temp.warehouseCode +
                                      "\')\" class=\"edit text-primary text-uppercase text-strong text-sm mr-10\">Chuyển Kho</a>" +
                                 "</td></tr>");
            
            //Transfer details
            $('#warehouseId2').append("<option value="+temp.warehouseId+">" + temp.warehouseCode + " - " + temp.warehouseName+"</option>");
        }
        $('#warehouseId2').trigger("chosen:updated");
    }
    else {
        result.append("<tr class=\"odd\"><td valign=\"top\" colspan=\"3\" class=\"dataTables_empty\">.......Không Có Dữ Liệu ....</td></tr>")

    }
}; 

//submit form create
$("#form3").submit(function (e) {
    //nếu form đã validate
    if (this.checkValidity()) {
        e.preventDefault();
        
        var warehouse = {}
        warehouse["warehouseCode"] = $('#code').val();
        warehouse["warehouseName"] = $('#name').val();
        warehouse["maxQuantity"] = $('#quantity').val();
        warehouse["address"] = $('#address').val();
        warehouse["phone"] = $('#phone').val();
        warehouse["fax"] = $('#fax').val();
        warehouse["description"] = $('#description').val();
        warehouse["isActive"] = false;
        
        var manager = {}
        manager["employeeId"] = $( "#empId option:selected" ).val();
        warehouse["manager"] = manager;
        
        $.ajax({
        	type : "POST",
        	url : "./warehouse/add",
        	contentType: "application/json; charset=UTF-8",
        	data : JSON.stringify(warehouse),
        	dataType : "json",
        	success : function(warehouse) {
        		if (warehouse == true) {
        			$('#success').addClass("alert alert-success");
					$('#success').text("Thêm Thành Công");
					$('#error').removeClass("alert alert-danger");
					$('#error').text("");
					$('#refresh').click();
					$('#create').modal('hide');
					abc();
        		} else {
        			$('#error').addClass("alert alert-danger");
					$('#error').text("Thêm Không Thành Công! Vui lòng thử lại!");
					$('#success').removeClass("alert alert-success");
					$('#success').text("");
        		}
        	}
        });
}else {
	alert("Thông tin không hợp lệ !");
}
})

function Edit(id) {
        $('#error-edit').removeClass("alert alert-success");
        $('#error-edit').text("");
        $("#code1").val("");
        $("#name1").val("");
        $("#quantity1").val("");
        $("#empId1").val("");
        $("#address1").val("");
        $("#phone1").val("");
        $("#fax1").val("");
        $("#description1").val("");
        
        var inputData = {}
    	inputData["warehouseId"] = id;

        $.ajax({
    		type : "POST",
    		url : "./warehouse/getById",
    		contentType: "application/json; charset=UTF-8",
    		data : JSON.stringify(inputData),
    		dataType : "json",
            success: function (data) {
                //open edit model
                $('#edit').modal('toggle');
                //format date
                ////fill data into edit model
                $("#id1").val(data.warehouseId);
                $("#code1").val(data.warehouseCode);
                $("#name1").val(data.warehouseName);
                $("#quantity1").val(data.maxQuantity);
                $("#currentQuantity1").val(data.currentQuantity);
                $("#empId1").val(data.manager.employeeId);
                $("#empId1").trigger("chosen:updated");
                $("#address1").val(data.address);
                $("#phone1").val(data.phone);
                $("#fax1").val(data.fax);
                $("#description1").val(data.description);                
                $("#status").val(data.isActive.toString()).trigger("chosen:updated");
            },
            error: function (data) {
                alert("Xảy ra lỗi!");
            }
        });

    }


    //edit form
    $("#formedit").submit(function (e) {
        //nếu form đã validate

        if (this.checkValidity()) {
            e.preventDefault();
            
            var warehouse = {}
            warehouse["warehouseId"] = $('#id1').val();
            warehouse["warehouseCode"] = $('#code1').val();
            warehouse["warehouseName"] = $('#name1').val();
            warehouse["maxQuantity"] = $('#quantity1').val();
            warehouse["currentQuantity"] = $('#currentQuantity1').val();
            warehouse["address"] = $('#address1').val();
            warehouse["phone"] = $('#phone1').val();
            warehouse["fax"] = $('#fax1').val();
            warehouse["description"] = $('#description1').val();
            warehouse["isActive"] = $( "#status option:selected" ).val();
            
            var manager = {}
            manager["employeeId"] = $( "#empId1 option:selected" ).val();
            warehouse["manager"] = manager;
            
            $.ajax({
            	type : "POST",
            	url : "./warehouse/edit",
            	contentType: "application/json; charset=UTF-8",
            	data : JSON.stringify(warehouse),
            	dataType : "json",
                success: function (data) {
                    if (data == true) {
                        $('#create').modal('hide');
                        $('#edit').modal('hide');
                        $('#success').addClass("alert alert-success");
                        $('#success').text("Sửa Thành Công");
                        abc();
                    }
                    else {
                        $('#error-create').addClass("alert alert-danger");
                        if (data.error == 1) {
                            $('#error-create').text("Sửa Không Thành Công! Mã Kho Đã Tồn Tại!");
                        }
                        else {
                            $('#error-create').text("Sửa Không Thành Công! Vui lòng thử lại!");
                        }
                    }
                },
                error: function () {
                    alert("Có Lỗi Xảy Ra!");
                }
            });
        }

    })

var warehouseid;

   function Detail(id, name, code) {	   
	   //load danh sách sản phẩm trong kho
       $.ajax({
           url: "./warehouse/getWarehouseDetail",
           data: { id: id },
           type: "GET",
           dataType: "json",
           success: function (data) {
               $('#details').modal('toggle');
               $("#warehousecode").text("Bạn Đang Xem Kho :" + code + " " + name);
               data = JSOG.decode(data);
               loadWarehouseDetail(data);
               warehouseid = id;
           },
           error: function () {
               alert("Error");
           }
       });
       
     //load danh sách phiếu nhập hàng
       $.ajax({
           url: "./warehouse/getImportInvoicesDetail",
           data: { id: id },
           type: "GET",
           dataType: "json",
           success: function (data) {
        	   data = JSOG.decode(data);
        	   loadImportInvoiceData(data);
           },
           error: function () {
               alert("Error");

           }
       });
    }

function loadWarehouseDetail(data) {
    //load data here
    $('#showProductData').html
    var result = $('#showProductData');
    result.html("");

    var records = $('#records_detail');
    records.html("Hiển thị " + data.length + " bản ghi");
    if (data.length == 0) {
        result.append("<tr><td></td><td>....Không Có Dữ Liệu...</td><td></td><td></td></tr>");
    }
    else {

        for (var i = 0; i < data.length ; i++) {
            var stt = i + 1;
            var temp = data[i];
            result.append("<tr><td>" + stt + "</td>" +
                                 "<td hidden> <input type=\"text\" id=\"" + temp.WarehouseId + "\"value=\"" + temp.WarehouseId + "\"></td>" +
                                 "<td>" + temp.product.productCode + "</td>" +
                                 "<td>" + temp.product.productName + "</td>" +
                                 "<td>" + temp.quantity + "</td>");
        }
    }
};

function loadImportInvoiceData(data) {
    //load data here
    $('#showImportInvoiceData').html
    var result = $('#showImportInvoiceData');
    result.html("");

    var records = $('#records_import');
    records.html("Hiển thị " + data.length + " bản ghi");
    if (data.length == 0) {
        result.append("<tr><td></td><td>....Không Có Dữ Liệu...</td><td></td><td></td></tr>");
    }
    else {
        for (var i = 0; i < data.length ; i++) {
            var stt = i + 1;
            var temp = data[i];
            
            var orderDate = new Date(parseInt(temp.orderDate));            
            var bdYear = orderDate.getFullYear();
			var bdMonth = orderDate.getMonth() + 1;
			var bdDay = orderDate.getDate();			
			orderDate = bdDay+'/'+bdMonth+'/'+bdYear;
			
			var total = formatMoney(temp.total);
            			
            result.append("<tr><td>" + stt + "</td>" +
                                 "<td hidden> <input type=\"text\" id=\"" + temp.importInvoiceId + "\"value=\"" + temp.importInvoiceId + "\"></td>" +
                                 "<td>" + temp.importInvoiceCode + "</td>" +
                                 "<td>" + temp.vendor.vendorName + "</td>" +
                                 "<td>" + orderDate + "</td>" +
                                 "<td>" + total + "</td>");
        }
    }

};

var productData = new Array();
var productDetailData = new Array();
function Transfer(id, name, code){
	$.ajax({
        url: "./warehouse/getWarehouseDetail",
        data: { id: id },
        type: "GET",
        dataType: "json",
        success: function (data) {
        	if(data.length <= 0){
        		alert('Không còn sản phẩm trong kho !');
        		return;
        	}
        	var productList = $('#product2');
        	
        	//clear view
        	productData = [];
        	productDetailData = [];
        	productList.val('').empty().trigger('chosen:updated');
        	$('#hello2').empty();
        	$('#code2').val("");
        	$('#description2').val("");
        	
            $('#transfer').modal('toggle');
            $('#currentWarehouse2').val(code + " - " + name);            
            $('#id2').val(id);
            
            for(var i = 0;i < data.length;i++){
            	var temp = data[i];
            	productList.append("<option value="+temp.product.productId+">" + temp.product.productName + "</option>");
            	
            	var pro = { 'ProductId': temp.product.productId,
                        'Quantity': temp.quantity,
            	}
            	productDetailData.push(pro);
            }
            productList.trigger("chosen:updated");
            
            var productQuantity = productDetailData[0].Quantity;
            $('#quantity2').attr({
    			"max":productQuantity
    		});
            $('#quantity2').val(1);
        },
        error: function () {
            alert("Error");
        }
    });
}

$("#addProduct").click(function (e) {
    e.preventDefault();
    //Check exist
    var value = $('#product2 option:selected').val();
    for(var i = 0;i < productData.length;i++){
    	if(productData[i].ProductId == value){
    		alert("Sản phẩm đã có trong danh sách");
    		return;
		}
    }
    
    var productId = value;
    var quantity  = $("#quantity2").val();
    var pro = { 'ProductId': productId,
                'Quantity': quantity,
    }
    
    productData.push(pro);
    var result = $('#hello2');
    result.append("<tr id = " + productId + ">" +
    				"<td>" + $('#product2 option:selected').text() + "</td>" +
                    "<td>" + quantity + "</td>" +
                    "<td class=\"actions\">" +
                        "<a role=\"button\" tabindex=\"0\" onclick=\"DelProduct(" + productId + ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" +
                    "</td></tr>"
        );
})

$("#product2").change(function(e){
        e.preventDefault();
        
        var value = $('#product2 option:selected').val();
        
        for(var i = 0;i < productDetailData.length;i++){
        	if(productDetailData[i].ProductId == value){        		
        		var productQuantity = productDetailData[i].Quantity;
        		break;
        	}
        }
        
        var currentMax = $('#quantity2').attr("max");
        
        if(currentMax > productQuantity){
        	$('#quantity2').attr({
    			"max":productQuantity
    		});
        }
        
        if($('#quantity2').val() > productQuantity){
    		$('#quantity2').val(productQuantity)
    	}
    });

function DelProduct(id){
	$('#' + id + '').remove();
    for(var i = 0 ; i < productData.length ; i++){
        if (productData[i].ProductId == id) {
        	productData.splice(i, 1);
            break;
        }
    }
}

$("#formTransfer").submit(function (e) {
	 if (this.checkValidity()) {
        e.preventDefault();
		var warehouseTransfer = {}
		warehouseTransfer["warehouseTransferCode"] = $('#code2').val();
		warehouseTransfer["dateTransfer"] = $('#dateTransfer2').val();
		warehouseTransfer["description"] = $('#description2').val();
		
		var warehouseOrigin = {};
		warehouseOrigin["warehouseId"] = $('#id2').val();
		
		var warehouseTarget = {};
		warehouseTarget["warehouseId"] = $('#warehouseId2 option:selected').val();
		
		var employee = {};
		employee["employeeId"] = $('#empId2 option:selected').val();
		
		warehouseTransfer["warehouseOrigin"] = warehouseOrigin;
		warehouseTransfer["warehouseTarget"] = warehouseTarget;
		warehouseTransfer["employee"] = employee;
		
		$.ajax({
        	type : "POST",
        	url : "./warehouse/addWarehouseTransfer",
        	contentType: "application/json; charset=UTF-8",
        	data : JSON.stringify(warehouseTransfer),
        	dataType : "json",
        	success : function(warehouseTransfer) {
        		if (warehouseTransfer != null) {
        			insertWarehouseTransferDetail(warehouseTransfer);
        		} else {
        			$('#error').addClass("alert alert-danger");
					$('#error').text("Chuyển Kho Không Thành Công! Vui lòng thử lại!");
					$('#success').removeClass("alert alert-success");
					$('#success').text("");
        		}
        	}
        });
	 }
})

function insertWarehouseTransferDetail(id){
	var details = new Array();
	
	for(var i = 0;i < productData.length;i++){
		var detail = {};		
		detail["quantity"] = productData[i].Quantity;
		
		var product = {};
		product["productId"] = productData[i].ProductId;		
		detail["product"] = product;
		
		var warehouseTransfer = {};
		warehouseTransfer["warehouseTransferId"] = id;		
		detail["warehouseTransfer"] = warehouseTransfer;
		
		details.push(detail);
	}
	
	$.ajax({
    	type : "POST",
    	url : "./warehouse/addWarehouseTransferDetail",
    	contentType: "application/json; charset=UTF-8",
    	data : JSON.stringify(details),
    	dataType : "json",
    	success : function(details) {    		
    		$('#success').addClass("alert alert-success");
			$('#success').text("Chuyển Kho Thành Công");
			$('#error').removeClass("alert alert-danger");
			$('#error').text("");
			$('#refresh').click();
			$('#transfer').modal('hide');
			abc();
    	}
    });
	return false;
}

$('#search').click(function(e) {
	var inputData = [$('#searchdata').val(), $('#searchtype').val()];
	
	if (inputData[0] != "") {
		$.ajax({
			type : "POST",
			url : "./warehouse/search",
			contentType: "application/json; charset=UTF-8",
			data : JSON.stringify(inputData),
			dataType : "json",
			success : function(data) {
				data = JSOG.decode(data);
				loadData(data);
			},
			error : function(data) {
				alert("Lỗi xảy ra !!");
			}
		});
	}
})