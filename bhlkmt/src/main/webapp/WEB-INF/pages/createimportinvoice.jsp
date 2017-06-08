<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<template:template_page title="Phiếu Nhập Hàng">
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
                                        <li class="">
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Bán Hàng</span></a>
                                            <ul>
                                                <li class="">
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
                                        <li class="active">
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Khách Kho</span></a>
                                            <ul>
                                                <li class="active">
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
                            <center><h1 class="custom-font filled bg-cyan"> Phiếu Nhập Hàng</h1></center>
                           
                            <hr class="line-dashed line-full" />
                            <form class="form-horizontal" role="form" id="form3" name="CreateForm" data-parsley-validate>
                                <div class="form-group">
                                    <strong for="input01" class="col-sm-2 control-label">Mã</strong>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="code" autofocus data-parsley-trigger="change" required>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <strong for="input01" class="col-sm-2 control-label">Nhân Viên </strong>
                                    <div class="col-sm-3">
                                        <select tabindex="3" class="chosen-select" id="employee" style="width: 200px;">
                                            <option></option>
                                            <c:forEach items="${emp_list}" var="emp">													
												<option value="<c:out value="${emp.employeeId}"/>"><c:out value="${emp.employeeName}"/></option>
											</c:forEach>
                                        </select>

                                    </div>
                                    <strong for="input01" class="col-sm-2 control-label">Mã Kho</strong>
                                    <div class="col-sm-2">
                                       <!-- <input hidden type="text" id="warehouse" value="">
                                       <label disabled class="form-control"  ></label> -->
                                       <select tabindex="3" class="chosen-select" id="warehouse" style="width: 200px;">
											<c:forEach var="wh" items="${ware_list}">
                                                <option value="<c:out value="${wh.warehouseId}"/>"><c:out value="${wh.warehouseName}"/></option>
                                            </c:forEach>

                                        </select>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <strong class="col-sm-2 control-label">Nhà Cung Cấp</strong>
                                    <div class="col-sm-3">
                                        <select tabindex="3" class="chosen-select" id="vendor" style="width: 200px;">
											<c:forEach var="cus" items="${ven_list}">
                                                <option value="<c:out value="${cus.vendorId}"/>"><c:out value="${cus.vendorName}"/></option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                    <strong for="input01" class="col-sm-2 control-label">Chiết Khấu</strong>
                                    <div class="col-sm-2">
                                        <input type="number" class="form-control" min="0" max="100" id="discount" autofocus data-parsley-trigger="change" required>
                                    </div>
                                    <strong for="input01" class="" control-label"">%</strong>
                                </div>
                                <div class="form-group">
                                    <strong class="col-sm-2 control-label">Ngày Đặt Hàng</strong>
                                    <div class="col-sm-3">
                                        <input type="date" class="form-control" id="order" placeholder="mm//dd/yyyy" data-parsley-trigger="change" required>
                                    </div>

                                    <strong class="col-sm-2 control-label">Ngày Nhập Hàng</strong>
                                    <div class="col-sm-3">
                                        <input disabled type="date" class="form-control" id="arrive" placeholder="mm//dd/yyyy" data-parsley-trigger="change" required>
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

                                    <select tabindex="2" class="chosen-select" id="product" style="width: 50%;">
										<c:forEach var="pro" items="${pro_list}">
                                                <option value="<c:out value="${pro.productId}"/>"><c:out value="${pro.productName}"/></option>
                                            </c:forEach>

                                    </select>


                                    <strong for="input01" style="width: 150px;" class="col-sm-1 control-label">Số Lượng </strong>
                                    <div class="col-sm-2">
                                        <input type="number" min="10" max="1000" class="form-control" id="quantity" data-parsley-type="digits" autofocus data-parsley-trigger="change" required>
                                    </div>
                                    <strong for="input01" class="col-sm-1 control-label">Đơn Giá</strong>
                                    <div class="col-sm-2">
                                        <input type="text" min="1000" class="form-control" id="price" autofocus data-parsley-type="digits" data-parsley-trigger="change" required>
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
         document.getElementById("arrive").value = today;
     });
     var stt = 0;
     var importinvoiceId = 0;
     var totalmoney = 0;
     var productlist = new Array();

     $("#chose").submit(function (e) {
         //nếu form đã validate
         if (this.checkValidity()) {
             e.preventDefault();
             var type;
             var productId = $("#product").val();              
             var quantity  = $("#quantity").val();
             var price =  $("#price").val() ;
             var total = $("#quantity").val() * $("#price").val();
             var pro = { 'productId': productId ,
                         'quantity': quantity,
                         'price': price,
                         'total': total
             }

             $('#totalmoney').text("");

             totalmoney += total;

             $('#totalmoney').text("Tổng Tiền :" + totalmoney + " VNĐ");

             //get product
                 productlist.push(pro);
                 var result = $('#hello');
                 result.append("<tr id = " + productId + ">" +
                                 "<td>" + $('#product option:selected').text() + "</td>" +
                                 "<td>" + "SP" + "</td>" +
                                 "<td>" + quantity + "</td>" +
                                 "<td>" + price + "</td>" +
                                 "<td>" + total + "</td>" +
                                 "<td class=\"actions\">" +
                                     "<a role=\"button\" tabindex=\"0\" onclick=\"Del(" + productId + ")\" class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" +
                                 "</td></tr>"
                     );
         }


     })


     function Del(id) {
         $('#' + id + '').remove();           
         stt--;
         for(var i = 0 ; i < productlist.length ; i++){
             if (productlist[i].ProductId == id) {
                 totalmoney -= productlist[i].Total;
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
         var x = $('#employee').val();
         if (this.checkValidity()) {
             if (productlist.length > 0) {
            	 var inputData = {
                         'importInvoiceCode': $('#code').val(),
                         'orderDate': $('#order').val(),
                         'arrivalDate': $('#arrive').val(),
                         'subtotal': totalmoney,
                         'discount': $('#discount').val(),
                         'description': $('#description').val()
                         }
                var employee = {'employeeId': 1}
             	var warehouse = {'warehouseId': $('#warehouse').val()}
             	var vendor = {'vendorId': $('#vendor').val()}
             	inputData["employee"] = employee;
             	inputData["warehouse"] = warehouse;
             	inputData["vendor"] = vendor;
                 $.ajax({
                     url: "./importinvoice/add",
                     type: "POST",
                     data: JSON.stringify(inputData),
                     contentType: 'application/json',
                     datatype: "json",
                     success: function (data) {
                         if (data != false) {
                             CreateImportDetial(parseInt(data));
                         }
                         else {
                             if (data.error == 1) {
                                 alert("Mã Phiếu Đã Tồn Tại !!");

                             }
                             else {
                                 alert("Lỗi Tạo Thông Tin Phiếu Nhập !!" + data.message);
                             }

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
     function CreateImportDetial(id) {
        
             if (productlist.length > 0) {
                 var postData = [];
                 for(var i = 0; i < productlist.length; i++){
             		var product = {
             				'productId': productlist[i].productId,
             		}    	
             		var importInvoice = {
             				'importInvoiceId': id,
             		}    	
                 	postData[i] = {
                 		'price': productlist[0].price,
                 		'product': product,
                 		'quantity': productlist[0].quantity,
                 		'total': productlist[0].total,
                 		'importInvoice': importInvoice,
                 	}
                 }
                 $.ajax({
                	 url: "./importinvoicedetail/add",
                     type: "POST",
                     data: JSON.stringify(postData),
                     contentType: 'application/json',
                     datatype: "json",
                     success: function (data) {
                         if (data == "true") {
                             alert("Thành Công");
                         } 
                         else {
                                 if(data.error == 1){
                                     alert("Kho Đã Đầy ! Không Thể Nhập Thêm " + data.message);
                             
                                 }
                                  else{
                                      alert("Không Thành Công")
                                 }

                         }
                     },
                     error: function () {


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