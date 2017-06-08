<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<template:template_page title="Hóa Đơn">
	<jsp:attribute name="head_area">
		<!-- Add  css file here-->
	</jsp:attribute>
	
	<jsp:attribute name="content">
		<div id="controls">
		    <!-- ================================================
		    ================= SIDEBAR Content ===================
		    ================================================= -->
		    <aside id="sidebar">
		        <div id="sidebar-wrap">
		            <div class="panel-group slim-scroll" role="tablist">
		                <div class="panel panel-default">
		                    <div class="panel-heading" role="tab">
		                        <h4 class="panel-title">
		                            <a data-toggle="collapse"
										href="#sidebarNav">
		                                <i class="fa fa-angle-up"></i>
		                            </a>
		                        </h4>
		                    </div>
		                    <div id="sidebarNav"
								class="panel-collapse collapse in" role="tabpanel">
		                        <div class="panel-body">
                                    <!-- ===================================================
                					================= NAVIGATION Content ===================
               						==================================================== -->
                                    <ul id="navigation">
                                        <li class="">
                                        	<a href="./"><i
												class="fa fa-dashboard"></i><span>Trang Chủ</span></a>
                                        </li>
                                        <li class="">
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Nhân Viên</span></a>
                                            <ul>
                                                <li class="">
                                                    <a
													href="./employee"><i class="fa fa-caret-right"></i> Danh Sách Nhân Viên</a>
                                                </li>

                                            </ul>
                                        </li>
                                        <li class="active">
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Bán Hàng</span></a>
                                            <ul>
                                                <li class="active">
                                                    <a
													href="./saleinvoice"><i class="fa fa-caret-right"></i> Danh Sách Hóa Đơn</a>
                                                </li>
                                                <li class="">
                                                    <a
													href="./createsaleinvoice"><i
														class="fa fa-caret-right"></i> Lập Hóa Đơn </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Khách Hàng</span></a>
                                            <ul>
                                                <li>
                                                    <a
													href="./customer"><i class="fa fa-caret-right"></i> Danh Sách Khách Hàng</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Sản Phẩm</span></a>
                                            <ul>
                                                <li class="">
                                                    <a
													href="./product"><i class="fa fa-caret-right"></i> Danh Sách Sản Phẩm</a>
                                                </li>

                                                <li class="">
                                                    <a
													href="./manufacture"><i class="fa fa-caret-right"></i> Nhà Sản Xuất </a>
                                                </li>
                                                <li class="">
                                                    <a
													href="./componentType"><i
														class="fa fa-caret-right"></i> Loại Sản Phẩm </a>
                                                </li>

                                            </ul>
                                        </li>
                                        <li class="">
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Nhà Cung Cấp</span></a>
                                            <ul>
                                                <li class="">
                                                    <a
													href="./vendor"><i class="fa fa-caret-right"></i> Danh Sách Nhà Cung Cấp</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Khách Kho</span></a>
                                            <ul>
                                                <li class="">
                                                    <a
													href="./warehouse"><i class="fa fa-caret-right"></i> Danh sách kho </a>
                                                </li>
                                                <li class="">
                                                    <a
													href="./warehousetransfer"><i class="fa fa-caret-right"></i> Lịch Sử Chuyển Kho </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
		                            <!--/ NAVIGATION Content -->
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </aside>
		    <!--/ SIDEBAR Content -->
		</div>
		<section id="content">
		    <div class="page page-dashboard">
		        <div class="pageheader">
		            <h2>
						<span></span>
					</h2>
		            <div class="page-bar">
		                <ul class="page-breadcrumb">
		                    <li>
		                        <a href="./"><i
									class="fa fa-home"></i> Trang Chủ</a>
		                    </li>
		                    <li>
		                        <a href="./"></a>
		                    </li>
		                </ul>
		                <div class="page-toolbar"></div>
		            </div>
		        </div>
		    </div>

    <div class="page page-tables-datatables">
        <div>
            <font size="6"><span id="success"> </span></font>
        </div>
        <div class="row">
            <!-- col -->
            <div class="col-md-12">
                <!-- tile -->
                <section class="tile">

                    <!-- tile header -->
                    <div class="tile-header dvd dvd-btm">

                        <h1 class="custom-font"><strong>Danh Sách Hóa Đơn</strong> </h1>
                        <ul class="controls">
                            <li>
                                <a href="./createsaleinvoice"><i class="fa fa-plus mr-5"></i>Thêm</a>
                            </li>
                            <li class="dropdown">

                                <a role="button" tabindex="0" class="dropdown-toggle settings" data-toggle="dropdown">
                                    <i class="fa fa-cog"></i>
                                    <i class="fa fa-spinner fa-spin"></i>
                                </a>

                                <ul class="dropdown-menu pull-right with-arrow animated littleFadeInUp">
                                    <li>
                                        <a role="button" tabindex="0" class="tile-toggle">
                                            <span class="minimize"><i class="fa fa-angle-down"></i>&nbsp;&nbsp;&nbsp;Nhỏ</span>
                                            <span class="expand"><i class="fa fa-angle-up"></i>&nbsp;&nbsp;&nbsp;Mở Rộng</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a id="refresh" role="button" tabindex="0" class="tile-refresh">
                                            <i class="fa fa-refresh"></i> Tải Lại
                                        </a>
                                    </li>
                                    <li>
                                        <a role="button" tabindex="0" class="tile-fullscreen">
                                            <i class="fa fa-expand"></i> Toàn Màn Hình
                                        </a>
                                    </li>
                                </ul>

                            </li>
                            <li class="remove"><a role="button" tabindex="0" class="tile-close"><i class="fa fa-times"></i></a></li>
                        </ul>
                    </div>
                    <!-- /tile header -->
                    <!-- tile body -->
                    <div class="tile-body">
                        <div class="table-responsive">
                            <table class="table table-custom" id="">
                                <thead>
                                    <tr id="">
                                        <lable id="records"></lable>
                                    </tr>

                                    <tr>
                                        <th>
                                            <strong class="">STT</strong>
                                        </th>
                                        <th>
                                            <strong class="">Mã Hóa Đơn</strong>
                                        </th>
                                        <th>
                                            <strong>Ngày Hóa Đơn</strong>
                                        </th>
                                        <th>
                                            <strong>Tổng</strong>
                                        </th>
                                        <th>
                                            <strong>Mô Tả</strong>
                                        </th>                                        
                                        <th style="width: 160px;" class="no-sort">
                                            
                                        </th>
                                    </tr>

                                </thead>
                                <tbody id="hello"><tr class="odd"><td valign="top" colspan="3" class="dataTables_empty">...Loading...</td></tr></tbody>
                            </table>

                        </div>
                    </div>
                    <!-- /tile body -->


                </section>
                <!-- /tile -->
            </div>
        </div>
    </div>
</section>
<!-- ================================================
   ================= End Index ===================
   ================================================= -->
<!--/ CONTENT -->


<!-- Modal Edit -->
<div id="edit" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Sửa Thông Tin Sản Phẩm</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="editForm" name="CreateForm" data-parsley-validate>
                    <div class="form-group">
                        <span id="error-edit"></span>

                        <div class="form-group">
                            <strong for="input01" class="col-sm-2 control-label">Nhân Viên </strong>
                            <div class="col-sm-3">
                                <select tabindex="3" class="chosen-select" id="employee" style="width: 200px;">
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong for="input01" class="col-sm-2 control-label"> Kho </strong>
                            <div class="col-sm-3">
                                <select tabindex="3" class="chosen-select" id="warehouse" style="width: 200px;">
                                	<option></option>
                                    <c:forEach items="${ware_list}" var="warehouse">													
										<option value="<c:out value="${warehouse.warehouseId}"/>"><c:out value="${warehouse.warehouseName}"/></option>
									</c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong for="input01" class="col-sm-2 control-label"> Khách Hàng </strong>
                            <div class="col-sm-3">
                                <select tabindex="3" class="chosen-select" id="customer" style="width: 200px;">
                                	<option></option>
                                    <c:forEach var="cus" items="${cus_list}">
                                    	<option value="<c:out value="${cus.customerId}"/>"><c:out value="${cus.customerName}"/></option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong for="input01" class="col-sm-2 control-label">Mã Hóa Đơn</strong>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="salesInvoiceCode" autofocus data-parsley-trigger="change" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong class="col-sm-2 control-label">Ngày Lập Hóa Đơn</strong>
                            <div class="col-sm-3">
                                <input type="date" class="form-control" id="date" placeholder="mm//dd/yyyy" data-parsley-trigger="change" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong for="input01" class="col-sm-2 control-label">Discount</strong>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" value="1" id="discount" autofocus data-parsley-trigger="change" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong for="input01" class="col-sm-2 control-label">Tổng Tiền</strong>
                            <div class="col-sm-3">
                                <input disabled type="text" value="0" class="form-control" id="total" autofocus data-parsley-trigger="change" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong for="input01" class="col-sm-2 control-label">Ghi Chú</strong>
                            <div class="col-sm-6">
                                <textarea type="text" cols="40" rows="5" id="description" autofocus data-parsley-trigger="change" required></textarea>
                            </div>
                        </div>
                    </div>
                </form>>
                    <hr class="line-dashed line-full" />
                    <form class="form-horizontal" role="form" id="chose" name="as" data-parsley-validate>
                        <div class="form-group">
                            <strong class="col-sm-2 control-label">Chọn Sản Phẩm</strong>
                            <select tabindex="2" class="chosen-select" id="product" style="width: 200px;">

                            </select>
                        </div>
                        <div class="form-group">
                            <strong for="input01" style="width: 150px;" class="col-sm-1 control-label">Số Lượng </strong>
                            <div class="col-sm-2">
                                <input type="number" min="10" max="1000" value="10" class="form-control" id="quantity" data-parsley-type="digits" autofocus data-parsley-trigger="change" required>
                            </div>
                            <strong for="input01" class="col-sm-1 control-label">Đơn Giá</strong>
                            <div class="col-sm-2">
                                <input disabled type="text" value="0" min="1000" class="form-control" id="price" autofocus data-parsley-type="digits" data-parsley-trigger="change" required>
                            </div>
                            <button id="add" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-1">Thêm</button>
                        </div>

                        <div class="page page-tables-datatables">
                            <div>
                                <font size="6"><span id="success"> </span></font>
                            </div>
                            <div class="row">
                                <!-- col -->
                                <div class="col-md-12">
                                    <!-- tile -->
                                    <section class="tile">

                                        <!-- tile header -->
                                        <div class="tile-header dvd dvd-btm">

                                        </div>
                                        <!-- /tile header -->
                                        <!-- tile body -->
                                        <div class="tile-body">
                                            <div class="table-responsive">
                                                <table class="table table-custom" id="">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                <strong class="">Sản Phẩm</strong>
                                                            </th>
                                                            <th>
                                                                <strong>Loại</strong>
                                                            </th>
                                                            <th>
                                                                <strong>Số Lượng</strong>
                                                            </th>
                                                            <th>
                                                                <strong>Đơn Giá</strong>
                                                            </th>
                                                            <th>
                                                                <strong>Thành Tiền</strong>
                                                            </th>
                                                            <th style="width: 160px;" class="no-sort">Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="hello1"></tbody>
                                                </table>
                                                <hr class="line-dashed line-full" />
                                                <strong class="col-sm-offset-9" id="totalmoney">Tổng Tiền : 0 VNĐ</strong>
                                            </div>
                                        </div>
                                        <!-- /tile body -->
                                        <button id="btnEdit" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-6">Sửa</button>
                                        <button id="" class="btn btn-ef btn-ef-2 btn-ef-2-warning btn-ef-2a mb-10 col-sm-6">Hủy</button>
                                    </section>
                                    <!-- /tile -->
                                </div>
                                <div class="col-md-offset-12">

                                </div>
                            </div>
                        </div>

                    </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-lightred btn-ef btn-ef-4 btn-ef-4c" data-dismiss="modal"><i class="fa fa-arrow-left"></i> Hủy</button>
            </div>
        </div>

    </div>
</div>
	</jsp:attribute>
	
	
	<jsp:attribute name="javascript_area">
		<!-- Add javascript here -->
	
    <script>
        $(window).load(function () {
            abc();
        });

        //gọi làm loaddata
        function abc(){
            $.ajax({
            	url: "./saleinvoice/get",
                data: "",
	            type: "GET",
	            dataType: "json",
	            success: function (data) {
	                loadData(data);
	            },
	            error: function (data) {
	                alert("Error");
            	}
        	});
        };

        //load data lên table
        function loadData(data) {
            //load data here
            var result = $('#hello');
            result.html("");
            var records = $('#records');
            records.html("Hiển thị " + data.length + " bản ghi");
            if (data.length > 0) {
	            for (var i = 0; i < data.length ; i++) {
	                var temp = data[i];
	                if (temp.date != null) {
	                	var sd = new Date(parseInt(temp.date));
	                    sd = ConvertToDate(sd);
	                }
	                else {
	                    var sd = null;
	                }
	                var stt = i + 1;
	                result.append("<tr><td>"+ stt +"</td>" +
	                                "<td>" + temp.salesInvoiceCode + "</td>" +
	                                "<td>" + sd + "</td>" +
	                                "<td>" + temp.total + "</td>" +
	                                "<td>" + temp.description + "</td>" +
	                                "<td class=\"actions\">" +
	                                    "<a role=\"button\" tabindex=\"0\" onclick=\"Edit(" + temp.salesInvoiceId + ")\" class=\"edit text-primary text-uppercase text-strong text-sm mr-10\">Sửa</a>" +
	                                    /* "<a role=\"button\" tabindex=\"0\" onclick=\"Del(" + temp.salesInvoiceId + ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" + */
	                                "</td></tr>");
	            }
            }
            else{
            	result.append("<tr class=\"odd\"><td valign=\"top\" colspan=\"3\" class=\"dataTables_empty\">.......Không Có Dữ Liệu ....</td></tr>")
            }
        };
        
        function ConvertToDate(date){
        	var day = ("0" + date.getDate()).slice(-2);
        	var month = ("0" + (date.getMonth() + 1)).slice(-2);
        	var rs = date.getFullYear()+"-"+(month)+"-"+(day) ;
        	return rs;
        }


        var productTotal = 0;
        var salesInvoiceId = 0;
        var totalmoney = 0;
        var productlist = new Array();
        var deleteProductList = new Array();
        var addProductList = new Array();

        //Fill Data In EditMode
        function Edit(id) {
            $("#salesInvoiceCode").val("");
            $("#data").val("");
            $("#discount").val("");
            $("#total").val("");
            $("#description").val("");
            var inputData = {}
    		inputData["salesInvoiceId"] = id;
            $.ajax({
                type: "POST",
                url: "./saleinvoice/getById",
                data: JSON.stringify(inputData),
                contentType: 'application/json',
                dataType: "json",
	            success: function (data) {
	                if (data == "false") {
	                    alert("Bạn Không Phải Nhân Viên Quản Lý Hóa Đơn Này !!")
	
	                }
                else {
                    $('#edit').modal('toggle');

                    salesInvoiceId = id;
                    totalmoney = data.subtotal;
                    $('#totalmoney').text("Tổng Tiền :" + totalmoney + " VNĐ");

                    $("#employee").val(data.employee.employeeId);
                    $("#employee").trigger("chosen:updated");
                    $("#warehouse").val(data.warehouse.warehouseId);
                    $("#warehouse").trigger("chosen:updated");
                    $("#customer").val(data.customer.customerId);
                    $("#customer").trigger("chosen:updated");

                    $("#salesInvoiceCode").val(data.salesInvoiceCode);
                    $("#date").val(ConvertToDate(new Date(parseInt(data.date))));
                    $("#discount").val(data.discount);
                    $("#total").val(data.total);
                    $("#description").val(data.description);

                    /* loadProductData($("#warehouse").val()); */

                    var detailsList;
                    productlist = [];
                    $.when(
                        $.ajax({
                            type: "GET",
                            url: "./saleinvoice/getSaleList",
                            data: {id: id},
                            contentType: 'application/json',
                            dataType: "json",
                            success: function (result) {
                                detailsList = result;
                                var result = $('#hello1');
    	                        result.html("");
    	                        $.each(detailsList, function (i, item) {
	                                result.append("<tr id = " + item.product.productId + ">" +
	                                        "<td>" + item.product.productName + "</td>" +
	                                        "<td>" + "Sản Phẩm" + "</td>" +
	                                        "<td>" + item.quantity + "</td>" +
	                                        "<td>" + item.price + "</td>" +
	                                        "<td>" + item.total + "</td>" +
	                                        "<td class=\"actions\">" +
	                                            "<a role=\"button\" tabindex=\"0\" onclick=\"DelDetails(" + item.productId + ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" +
	                                        "</td></tr>");
    	                        })
                            },
                            error: function (result) {
                                alert("Lỗi tải dữ liệu");
                            }
                        })
	                    ).done(function () {
	                        /* var result = $('#hello1');
	                        result.html("");
	                        var temp;
	                        var type;
	                        productTotal = detailsList.length;
	                        $.each(detailsList, function (i, item) {
	                            $.when(
	                                $.ajax({
	                                    type: "GET",
	                                    url: "",
	                                    data: {
	                                        id: item.productId
	                                    },
	                                    dataType: "json",
	                                    success: function (data) {
	                                        type = data;
	                                    },
	                                    error: function () {
	                                        alert("Lỗi Xảy ra");
	                                    }
	                                })
	                            ).done(function () {
	                                var pro = {
	                                    'SalesInvoiceDetailsId': item.salesInvoiceDetailsId,
	                                    'ProductId': item.productId,
	                                    'Quantity': item.quantity,
	                                    'Price': item.price,
	                                    'Total': item.total
	                                }
	                                productlist.push(pro);
	
	                                result.append("<tr id = " + item.productId + ">" +
	                                            "<td>" + type.productName + "</td>" +
	                                            "<td>" + type.componentProduct.componentType.componentTypeName + "</td>" +
	                                            "<td>" + item.quantity + "</td>" +
	                                            "<td>" + item.price + "</td>" +
	                                            "<td>" + item.total + "</td>" +
	                                            "<td class=\"actions\">" +
	                                                "<a role=\"button\" tabindex=\"0\" onclick=\"DelDetails(" + item.productId + ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" +
	                                            "</td></tr>");
	                            })
	                        }) */
	                    })
	                }
	            },
	            error: function(data) {
	                alert("Xảy ra lỗi!");
	            }
	        });
        }


        //Delete SalesInvoice
        function Del(id) {
            if (confirm("Bạn có muốn xóa không?") == false) {
                return;
            }
            else {
                $.ajax({
                    type: "POST", // here is your problem
                    url: "./saleinvoice/del",
                    data: JSON.stringify({'salesInvoiceId': id}),
                    contentType: 'application/json',
                    dataType: "json",
                    success: function(result) {
                        if (result) {
                            alert("Xóa Thành Công");
                            abc();
                        }
                        else{
                        	alert("Xóa không thành công");
                        }
                    },
                    error: function(data) {
                        alert("Xóa thất bại");
                    }
                });
            }
        }        
    </script>
	</jsp:attribute>
</template:template_page>