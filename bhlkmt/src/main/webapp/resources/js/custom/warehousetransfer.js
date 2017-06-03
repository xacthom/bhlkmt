$(window).load(function () {
    abc();
});

function abc(){
	var url = window.location;
    $.ajax({
        type: "GET",
    	url: "./warehouse/getAllWarehouseTransfer",
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

function loadData(data) {
    //load data here
    $('#hello').html
    var result = $('#hello');
    result.html("");
    var records = $('#records');
    records.html("Hiển thị " + data.length + " bản ghi");
    if (data.length > 0) {
    	
        for (var i = 0; i < data.length ; i++) {
            var temp = data[i].wahouseTransfer;
            var stt = i + 1;
            
            var transferDate = new Date(temp.dateTransfer);
            transferDate = ConvertToDate(transferDate);
            
            var totalProduct = data[i].totalProducts;
            
            result.append("<tr><td>" + stt + "</td>" +
                                 "<td hidden> <input type=\"text\" id=\"" + temp.warehouseTransferId + "\"value=\"" + temp.warehouseTransferId + "\"></td>" +
                                 "<td>" + temp.warehouseTransferCode + "</td>" +
                                 "<td>" + temp.warehouseOrigin.warehouseName + "</td>" +
                                 "<td>" + temp.warehouseTarget.warehouseName + "</td>" +
                                 "<td>" + temp.employee.employeeName + "</td>" +
                                 "<td>" + totalProduct + "</td>" +
                                 "<td>" + transferDate + "</td>" +
                                 "<td class=\"actions\">" +
                                      "<a role=\"button\" tabindex=\"0\" id=\"delete\" onclick=\"Detail(\'" + temp.warehouseTransferId + "\',\'" + temp.warehouseTransferCode +
                                      "\')\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xem</a>" +
                                 "</td></tr>");
        }
    }
    else {
        result.append("<tr class=\"odd\"><td valign=\"top\" colspan=\"3\" class=\"dataTables_empty\">.......Không Có Dữ Liệu ....</td></tr>")

    }
}; 

function Detail(id, code) {	   
	   //load danh sách sản phẩm trong kho
    $.ajax({
        url: "./warehouse/getWarehouseTransferDetail",
        data: { id: id },
        type: "GET",
        dataType: "json",
        success: function (data) {
            $('#details').modal('toggle');
            $("#warehousecode").text("Bạn Đang Xem Lịch Sử Chuyển Kho : " + code);
            
            data = JSOG.decode(data);
            loadWarehouseTransferDetail(data);
        },
        error: function () {
            alert("Error");
        }
    });
 }

function loadWarehouseTransferDetail(data) {
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
            var productType = temp.product.componentProduct.componentType.componentTypeName;
            
            result.append("<tr><td>" + stt + "</td>" +
                                 "<td hidden> <input type=\"text\" id=\"" + temp.WarehouseId + "\"value=\"" + temp.WarehouseId + "\"></td>" +
                                 "<td>" + productType + "</td>" +
                                 "<td>" + temp.product.productName + "</td>" +
                                 "<td>" + temp.quantity + "</td>");
        }
    }
};