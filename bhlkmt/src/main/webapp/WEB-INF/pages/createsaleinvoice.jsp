<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<template:template_page title="Lập Hóa Đơn">
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
		                            <a data-toggle="collapse" href="#sidebarNav">
		                                <i class="fa fa-angle-up"></i>
		                            </a>
		                        </h4>
		                    </div>
		                    <div id="sidebarNav" class="panel-collapse collapse in" role="tabpanel">
		                        <div class="panel-body">
		                                    <!-- ===================================================
		                ================= NAVIGATION Content ===================
		                ==================================================== -->
		                                    <ul id="navigation">
		                                        <li class="active"><a href="/Home/Index"><i class="fa fa-dashboard"></i> <span>Trang Chủ</span></a></li>
		                                        <li>
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Hệ Thống</span></a>
		                                            <ul>
		                                                <li>
		                                                    <a href=""><i class="fa fa-caret-right"></i> Phân Quyền</a>
		                                                </li>
		                                                <li class="">
		                                                    <a href="/Users/Create"><i class="fa fa-caret-right"></i> Sao Lưu/Phục Hồi Database </a>
		                                                </li>
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Nhân Viên</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="/Employees/Index"><i class="fa fa-caret-right"></i> Danh Sách Nhân Viên</a>
		                                                </li>
		
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Bán Hàng</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="/SalesInvoice/Index"><i class="fa fa-caret-right"></i> Danh Sách Hóa Đơn</a>
		                                                </li>
		                                                <li class="">
		                                                    <a href="/SalesInvoice/Create"><i class="fa fa-caret-right"></i> Lập Hóa Đơn </a>
		                                                </li>
		                                            </ul>
		                                        </li>
		                                        <li>
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Khách Hàng</span></a>
		                                            <ul>
		                                                <li>
		                                                    <a href="/Customers/Index"><i class="fa fa-caret-right"></i> Danh Sách Khách Hàng</a>
		                                                </li>
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Sản Phẩm</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="/Products/Index"><i class="fa fa-caret-right"></i> Danh Sách Sản Phẩm</a>
		                                                </li>
		
		                                                <li class="">
		                                                    <a href="/Manufactures/Index"><i class="fa fa-caret-right"></i> Nhà Sản Xuất </a>
		                                                </li>
		                                                <li class="">
		                                                    <a href="/ComponentTypes/Index"><i class="fa fa-caret-right"></i> Loại Sản Phẩm </a>
		                                                </li>
		
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Nhà Cung Cấp</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="/Vendors/Index"><i class="fa fa-caret-right"></i> Danh Sách Nhà Cung Cấp</a>
		                                                </li>
		
		
		
		                                            </ul>
		                                        </li>
		                                        <li>
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Tài Chính</span></a>
		                                            <ul>
		
		                                                <li class="">
		                                                    <a href=""><i class="fa fa-caret-right"></i> Thêm </a>
		                                                </li>
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Khách Kho</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="/Warehouses/Index"><i class="fa fa-caret-right"></i> Danh sách kho </a>
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

<!-- ================================================
   ================= End Navivator ===================
   ================================================= -->
<!--/ CONTROLS Content -->
<!-- ====================================================
================= CONTENT ===============================
===================================================== -->
===================================================== -->
<section id="content">
    <div class="page page-dashboard">
        <div class="pageheader">
            <h2><span></span></h2>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <a href="/Home/Index"><i class="fa fa-home"></i> Trang Chủ</a>
                    </li>
                    <li>
                        <a href="/Home/Index"></a>
                    </li>
                </ul>
                <div class="page-toolbar">

                </div>
            </div>
        </div>
    </div>


    <!--/ Form  -->
    <!-- ====================================================
    ================= Form ===============================
    ===================================================== -->

    <div class="page page-tables-datatables">

        <div class="row">
            <!-- col -->
            <div class="col-md-12">
                <!-- tile -->
                <section class="tile">
                    <section class="tile">

                        <!-- tile header -->
                        <div class="tile-header dvd dvd-btm">
                        </div>
                        <!-- /tile header -->
                        <!-- tile body -->
                        <div class="tile-body">
                            <center><h1>Lập Hóa Đơn</h1></center>
                            <hr class="line-dashed line-full" />
                            <form class="form-horizontal" role="form" id="form3" name="CreateForm" data-parsley-validate>

                                <div class="form-group">
                                    <strong class="col-sm-2 control-label">Nhân Viên </strong>
                                    <div class="col-sm-3">
                                        <input hidden type="text" id="employee" value="1">
                                        <label disabled class="form-control">Emp Name</label>
                                        
                                    </div>
                                </div>

                                <div class="form-group">
                                    <strong class="col-sm-2 control-label"> Kho </strong>
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
                                        <input type="date" disabled class="form-control" id="date" placeholder="mm//dd/yyyy" data-parsley-trigger="change" required>
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

                            </form>
                            <hr class="line-dashed line-full" />
                            <form class="form-horizontal" role="form" id="chose" name="as" data-parsley-validate>
                                <div class="form-group">
                                    <strong class="col-sm-2 control-label">Chọn Sản Phẩm</strong>
                                    <select tabindex="2" class="chosen-select" id="product" style="width: 200px;">
                                        <!-- Add Product -->
                                        <option></option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <strong for="input01" style="width: 150px;" class="col-sm-1 control-label">Số Lượng </strong>
                                    <div class="col-sm-2">
                                        <input  type="number" min="1" value="1" class="form-control" id="quantity" data-parsley-type="digits" autofocus data-parsley-trigger="change" required>
                                    </div>
                                    <strong for="input01" class="col-sm-1 control-label">Đơn Giá</strong>
                                    <div class="col-sm-2">
                                        <input disabled type="text" min="1000" class="form-control" id="price" autofocus data-parsley-type="digits" data-parsley-trigger="change" required>
                                    </div>
                                    <button id="add" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-1">Thêm</button>
                                </div>
                            </form>
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
                                                        <tbody id="hello"></tbody>
                                                    </table>
                                                    <hr class="line-dashed line-full" />
                                                    <strong class="col-sm-offset-9" id="totalmoney">Tổng Tiền : 0 VNĐ</strong>
                                                </div>
                                            </div>
                                            <!-- /tile body -->
                                            <button id="submit" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-6">Lưu</button>
                                            <button id="" class="btn btn-ef btn-ef-2 btn-ef-2-warning btn-ef-2a mb-10 col-sm-6">Hủy</button>
                                        </section>
                                        <!-- /tile -->
                                    </div>
                                    <div class="col-md-offset-12">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /tile body -->
                    </section>
                </section>
                <!-- /tile -->
            </div>
        </div>
    </div>

</section>
	</jsp:attribute>
	
	
	<jsp:attribute name="javascript_area">
		<!-- Add javascript here -->
	
	 <script>
        $(window).load(function () {
            loadProductData($('#warehouse').val());
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!

            var yyyy = today.getFullYear();
            if (dd < 10) {
                dd = '0' + dd;
            }
            if (mm < 10) {
                mm = '0' + mm;
            }
            var today = yyyy + '-' + mm + '-' + dd;
            document.getElementById("date").value = today;
        });

        $('#warehouse').on('change', function (e) {
            var optionSelected = $("option:selected", this);
            var valueSelected = this.value;
            loadProductData(valueSelected);
        });
		
        var warehousedetail = [];
        function loadProductData(val) {
        	if (val == "") return false;
        	var inputData = {}
    		inputData["warehouseId"] = val;
            $.ajax({
                type: "GET",
                url: "./warehouse/getallproduct",
                data: { id: parseInt(val) },
                dataType: "json",
                success: function (data) {
                    $("#product").html("");
                    for (var i = 0; i < data.length; i++) {
                        var temp = data[i];
                        $("#product").append("<option value=" + temp.product.productId + ">" + temp.product.productName + "</option>");
                        $("#product").trigger("chosen:updated");
                    }
                    warehousedetail = data;
                },
                error: function (data) {
                    alert('error');
                }
            });
        }
		
        var price = 0;
        $('#product').on('change', function (e) {
            var optionSelected = $("option:selected", this);
            var valueSelected = this.value;
            var result  = warehousedetail.filter(
            		function(o){
            			return o.product.productId == parseInt(valueSelected);
            			} 
            		);
            price = result[0].product.price;
            var soluong = parseInt($("#quantity").val(), 10);
            var total = price * soluong;
            $("#price").attr({
                "value": total,
            })
            $("#quantity").attr({
                "max" : result[0].quantity
            })
            /* onProductChangeCalculateTotal(valueSelected); */
        });
		

        function onProductChangeCalculateTotal(proId) {
        	var inputData = {}
    		inputData["productId"] = proId;
            $.ajax({
                type: "POST",
                url: "./product/getById",
                data: JSON.stringify(inputData),
                contentType: 'application/json',
                dataType: "json",
	            success: function (data) {
	                if (data) {
	                    price = data.price;
	                    var soluong = parseInt($("#quantity").val(), 10);
	                    var total = price * soluong;
	                    $("#price").attr({
	                        "value": total,
	                    })
	                    $("#quantity").attr({
	                        "max" : data.quantity
	                    })
	                }
	            },
	            error: function (data) {
	                alert('error');
	            }
	        });
        }

        $("#quantity").bind('keyup mouseup', function () {
        	var soluong = parseInt($("#quantity").val(), 10);
            var total = price * soluong;
            $("#price").attr({
                "value": total,
            })
        });

        var stt = 0;
        var salesInvoiceId = 0;
        var totalmoney = 0;
        var productlist = new Array();

        $("#chose").submit(function (e) {
            //nếu form đã validate
            if (this.checkValidity()) {
                e.preventDefault();
                var type;
                var productId = $("#product").val();

                for (var i = 0; i < productlist.length; i++)
                    if (productId == productlist[i].ProductId)
                        return;

                var quantity = $("#quantity").val();
                var price = $("#price").val();
                var total = parseInt($("#price").val());
                var pro = {
                    'ProductId': productId,
                    'Quantity': quantity,
                    'Price': price,
                    'Total': total
                }
                $('#totalmoney').text("");
                totalmoney = totalmoney + total;
                $('#totalmoney').text("Tổng Tiền :" + totalmoney + " VNĐ");
                //get product
                $.when(
                    $.ajax({
                        type: "POST",
                        url: "./product/getById",
                        data: JSON.stringify({'productId': productId}),
                        contentType: 'application/json',
                        dataType: "json",
                        success: function (data) {
                            /* type = data.componentProduct.componentType.componentTypeName; */
                        },
                        error: function () {
                            alert("Lỗi Xảy ra");
                        }
                    })
                ).done(function () {
                    productlist.push(pro);
                    var result = $('#hello');
                    result.append("<tr id = " + productId + ">" +
                                    "<td>" + $('#product option:selected').text() + "</td>" +
                                    "<td>" + type + "</td>" +
                                    "<td>" + quantity + "</td>" +
                                    "<td>" + price + "</td>" +
                                    "<td>" + total + "</td>" +
                                    "<td class=\"actions\">" +
                                        "<a role=\"button\" tabindex=\"0\" onclick=\"Del(" + productId + ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" +
                                    "</td></tr>"
                        );
                })
            }
        })


        function Del(id) {
            $('#' + id + '').remove();
            stt--;
            for (var i = 0 ; i < productlist.length ; i++) {
                if (productlist[i].ProductId == id) {
                    totalmoney = totalmoney - parseInt(productlist[i].Total);
                    productlist.splice(i, 1);
                    $('#totalmoney').text("Tổng Tiền :" + totalmoney + " VNĐ");
                    break;
                }
            }
        }

        $("#submit").click(function (e) {
            $('#form3').submit();
        })

        $('#form3').submit(function (e) {
            e.preventDefault();

            if (this.checkValidity()) {
                if (productlist.length > 0) {
                	var inputData = {
                            'salesInvoiceCode': $('#salesInvoiceCode').val(),
                            'date': $('#date').val(),
                            'discount': $('#discount').val(),
                            'subtotal': totalmoney,
                            'description': $('#description').val()
                            }
                    var employee = {'employeeId': $('#employee').val()}
                	var warehouse = {'warehouseId': $('#warehouse').val()}
                	var customer = {'customerId': $('#customer').val()}
                	inputData["employee"] = employee;
                	inputData["warehouse"] = warehouse;
                	inputData["customer"] = customer;
                    $.ajax({
                        url: "./saleinvoice/add",
                        type: "POST",
                        data: JSON.stringify(inputData),
                        contentType: 'application/json',
                        datatype: "json",
                        success: function (result) {
                            if (result != "false") {
                                CreateSalesInvoiceDetail(parseInt(result));
                            }
                            else {
                                alert("Thất bại");
                            }
                        },
                        error: function () {
                            alert("Lỗi Xảy ra");
                        }
                    });
                }
                else {
                    alert("Vui lòng nhập dữ liệu chi tiết !!!");
                }
                
            }
        })

        //submit form ImportInvoice
        function CreateSalesInvoiceDetail(saleId) {
            if (productlist.length > 0) {
                var postData = [];
                for(var i = 0; i < productlist.length; i++){
            		var product = {
            				'productId': productlist[i].ProductId,
            		}    	
            		var salesInvoice = {
            				'salesInvoiceId': saleId,
            		}    	
                	postData[i] = {
                		'price': productlist[0].Price,
                		'product': product,
                		'quantity': productlist[0].Quantity,
                		'total': productlist[0].Total,
                		'salesInvoice': salesInvoice,
                	}
                }
                $.ajax({
                    url: "./saleinvoicedetail/add",
                    type: "POST",
                    data: JSON.stringify(postData),
                    contentType: 'application/json',
                    datatype: "json",
                    success: function (data) {
                        if (data == "true") {
                            alert("Thành Công");
                        } else {
                            alert("Số Lượng Bán Quá Số Lượng Sản Phẩm Trong Kho")
                        }
                    },
                    error: function () {
                    	alert("Có Lỗi xảy ra");
                    }
                });
            }
            else {
                alert("Vui lòng nhập dữ liệu chi tiết !!!");
            }
        }

    </script>	
	</jsp:attribute>
</template:template_page>