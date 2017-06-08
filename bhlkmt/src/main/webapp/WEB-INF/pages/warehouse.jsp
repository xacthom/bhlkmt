<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<template:template_page title="Kho">
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
        <div>
            <font size="6"><span id="success"> </span></font>
        </div>
        <div class="row">
            <!-- col -->
            <div class="col-md-12">
                <!-- tile -->
                <section class="tile">
                    <div class="row">
                        <div class="col-sm-5">
                        </div>
                        <div class="col-sm-1"></div>

                        <div class="col-sm-6">
                            <div class="input-group">

                                <select id="searchtype" style="width: 20%; height: 30px;">
                                    <option value="1">Mã</option>
                                    <option value="2">Tên Kho</option>
                                    <option value="3">Quản Lý</option>
                                    <option value="4">Địa Chỉ</option>
                                    <option value="5">Trạng Thái</option>
                                </select>
                                <input id="searchdata" style="width: 80%;" type="text" class="input-sm form-control" placeholder="Tìm Kiếm...">
                                <span class="input-group-btn">
                                    <button id="search" class="btn btn-sm btn-success" type="button"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </div>

                    </div>
                    <!-- tile header -->
                    <div class="tile-header dvd dvd-btm">
                        <h1 class="custom-font" ><strong>Danh Sách Kho</strong> </h1>
                        
                        <ul class="controls">
                            <li>
                                <a id="add" role="button" data-toggle="modal" data-target="#create" class=""><i class="fa fa-plus mr-5"></i>Thêm</a>
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
                                        <a role="button" tabindex="0" class="tile-refresh">
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
                                            <strong class="">Mã</strong>
                                        </th>
                                        <th>
                                            <strong>Tên Kho</strong>
                                        </th>
                                        <th>
                                            <strong>Quản Lý</strong>
                                        </th>
                                        <th>
                                            <strong>Địa Chỉ</strong>
                                        </th>
                                        <th style="width: 100px;" >
                                            <strong >Số Lượng Hàng</strong>
                                        </th>
                                        <th>
                                            <strong>Trạng Thái</strong>
                                        </th>

                                        <th style="width: 160px;" class="no-sort">Actions</th>
                                    </tr>
                                </thead>
                                <tbody id="hello">
                                    <tr class="odd"><td valign="top" colspan="3" class="dataTables_empty">...Loading...</td></tr>
                                </tbody>
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
	
	<!-- Modal Create -->
<div id="create" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <strong class="modal-title">Thêm Kho</strong>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="form3" name="CreateForm" data-parsley-validate enctype="multipart/form-data">
                    <div class="form-group">
                        <span id="error-create"></span>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Mã</strong>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="code"  autofocus data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Tên Nhà Kho</strong>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="name"  data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Số Lượng Hàng Có Thể Chứa</strong>
                        <div class="col-sm-2">
                            <input type="number" class="form-control" min="100" max="10000" value="100" id="quantity" data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong class="col-sm-2 control-label">Người Quản Lí</strong>
                        <div class="col-sm-3">
                            <select tabindex="2" class="chosen-select" style="width: 200px;"  id="empId" data-parsley-trigger="change" required>
                            </select>
                        </div>

                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Địa chỉ</strong>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="address"  data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Số Điện Thọai</strong>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="phone"  placeholder="xxx-xxx xxx" data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Số FAX</strong>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="fax" placeholder="xxx-xxx xxx" data-parsley-trigger="change" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Mô Tả</strong>
                        <div class="col-sm-4">
                           <textarea rows="4" cols="50" id="description" data-parsley-trigger="change" required></textarea>
                        </div>
                    </div>

                    <hr class="line-dashed line-full" />
                    
                    <div class="form-group">
                        <div class="col-sm-6 col-sm-offset-2">
                            <button type="submit" id="CreateFormSubmit" value="Create" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-3">Lưu</button>
                            <button type="reset"  class="btn btn-ef btn-ef-2 btn-ef-2-danger btn-ef-2a mb-10 ">Xóa dữ liệu đã nhập</button>
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
                <form class="form-horizontal" role="form" id="formedit" name="CreateForm" data-parsley-validate enctype="multipart/form-data">
                    <div class="form-group">
                        <span id="error-edit"></span>
                    </div>
                    <div class="form-group" hidden>
                        <input type="text" id="id1">
                    </div>
                    <div class="form-group" hidden>
                        <input type="text" id="currentQuantity1">
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Mã</strong>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="code1" autofocus data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Tên Nhà Kho</strong>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="name1" data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Số Lượng Hàng Có Thể Chứa</strong>
                        <div class="col-sm-2">
                            <input type="number" class="form-control" min="100" max="10000" id="quantity1" data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong class="col-sm-2 control-label">Người Quản Lí</strong>
                        <div class="col-sm-3">
                            <select tabindex="-1" class="chosen-select" style="width: 200px;" id="empId1" placeholder="Chọn quản lí kho" data-parsley-trigger="change" required>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Địa chỉ</strong>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="address1" data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Số Điện Thọai</strong>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="phone1" placeholder="xxx-xxx xxx" data-parsley-length="[10, 12]" data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Số FAX</strong>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="fax1" placeholder="xxx-xxx xxx" data-parsley-length="[10, 12]" data-parsley-trigger="change" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Mô Tả</strong>
                        <div class="col-sm-4">
                            <textarea rows="4" cols="50" id="description1" data-parsley-trigger="change" required></textarea>

                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Trạng Thái</strong>
                        <div class="col-sm-4">
                            <select tabindex="-1" class="chosen-select" id="status" style="width: 200px;">
                                <option value="true">Hoạt Động</option>
                                <option value="false">Vô Hiệu Hóa</option>
                            </select>
                        </div>
                    </div>
                    <hr class="line-dashed line-full" />

                    <div class="form-group">
                        <div class="col-sm-6 col-sm-offset-2">
                            <button type="submit" id="CreateFormSubmit" value="Create" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-3">Lưu</button>
                            <button type="reset"  class="btn btn-ef btn-ef-2 btn-ef-2-danger btn-ef-2a mb-10 ">Xóa dữ liệu đã nhập</button>
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
	
	<!-- Modal Details -->
<div id="details" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="alert alert-cyan">
                    <strong id="warehousecode">Bạn Đang Xem :</strong>
                </div>
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Danh Sách Sản Phẩm Trong Kho</a></li>
                    <li><a data-toggle="tab" href="#menu1">Danh Sách Phiếu Nhập</a></li>

                </ul>
            </div>
            <div class="modal-body">               
                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">
                        <table class="table table-custom" id="">
                            <thead>
                                <tr>
                                    <lable id="records_detail"></lable>
                                </tr>
                                <tr>
                                    <th>
                                        <strong>STT</strong>
                                    </th>
                                    <th>
                                        <strong class="">Mã Sản Phẩm</strong>
                                    </th>
                                    <th>
                                        <strong>Tên Sản Phẩm</strong>
                                    </th>
                                    <th>
                                        <strong>Số Lượng Hàng</strong>
                                    </th>
                                </tr>
                            </thead>
                            <tbody id="showProductData"></tbody>
                        </table>
                    </div>

                    <div id="menu1" class="tab-pane fade">                        
                        <table class="table table-custom" id="">                           
                            <thead>
                            <a href="./createimportinvoice" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-12">Thêm Phiếu Nhập</a>
                                <tr id="">
                                    <lable id="records_import"></lable>
                                </tr>
                                <tr>
                                    <th>
                                        <strong>STT</strong>
                                    </th>
                                    <th>
                                        <strong class="">Mã Phiếu</strong>
                                    </th>
                                    <th>
                                        <strong>Nhà Cung Cấp</strong>
                                    </th>
                                    <th>
                                        <strong>Ngày Đặt</strong>
                                    </th>
                                    <th>
                                        <strong>Tổng Giá Trị</strong>
                                    </th>
                                </tr>
                            </thead>
                            <tbody id="showImportInvoiceData"></tbody>
                        </table>
                    </div>
                   
                </div>
                
            </div>
            <div class="modal-footer">
                <button class="btn btn-lightred btn-ef btn-ef-4 btn-ef-4c" data-dismiss="modal"><i class="fa fa-arrow-left"></i> Hủy</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal Transfer -->
<div id="transfer" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
    <section class="tile">
    <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Thông tin chuyển kho</h4>
            </div>
		<div class="tile-body">
             <form class="form-horizontal" role="form" id="formTransfer" name="TransferForm" data-parsley-validate>
                    <div class="form-group" hidden>
                        <input type="text" id="id2">
                    </div>
                    <div class="form-group">
                        <strong class="col-sm-2 control-label">Kho hiện tại</strong>
                        <div class="col-sm-6">
                            <input type="text" disabled class="form-control" id="currentWarehouse2"  data-parsley-trigger="change">
                        </div>
                    </div>
                    <div class="form-group">
                        <strong class="col-sm-2 control-label">Mã chuyển kho</strong>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="code2" autofocus data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong class="col-sm-2 control-label">Kho mới</strong>
                        <div class="col-sm-3">
                            <select tabindex="-1" class="chosen-select" style="width: 200px;" id="warehouseId2" data-parsley-trigger="change" required>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong class="col-sm-2 control-label">Quản lý chuyển kho</strong>
                        <div class="col-sm-3">
                            <select tabindex="-1" class="chosen-select" style="width: 200px;" id="empId2" data-parsley-trigger="change" required>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
	                        <strong class="col-sm-2 control-label">Ngày chuyển kho</strong>
	                        <div class="col-sm-3">
	                            <input type="date" class="form-control" id="dateTransfer2" placeholder="mm//dd/yyyy"  data-parsley-trigger="change" required>
	                            <span id="error-birthday"></span>
	                        </div>
	                    </div>
                    <div class="form-group">
                        <strong class="col-sm-2 control-label">Mô Tả</strong>
                        <div class="col-sm-4">
                           <textarea rows="4" cols="50" id="description2" data-parsley-trigger="change" required></textarea>
                        </div>
                    </div>
             <hr class="line-dashed line-full" />
                 <div class="form-group">
                     <strong class="col-sm-2 control-label">Chọn Sản Phẩm</strong>

                     <select tabindex="2" class="chosen-select" id="product2" style="width: 200px;">
                     </select>
                     
                     <strong style="width: 150px;" class="col-sm-1 control-label">Số Lượng </strong>
                     <div class="col-sm-2">
                         <input type="number" min="1" max="1000" value="1" class="form-control" id="quantity2" data-parsley-type="digits" autofocus data-parsley-trigger="change" required>
                     </div>
                     <button id="addProduct" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-1">Thêm</button>
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
                                                     <strong>Sản Phẩm</strong>
                                                 </th>
                                                 <th>
                                                     <strong>Số Lượng</strong>
                                                 </th>
                                                 <th style="width: 160px;" class="no-sort">Actions</th>
                                             </tr>
                                         </thead>
                                         <tbody id="hello2"></tbody>
                                     </table>
                                     <hr class="line-dashed line-full" />
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
             </form>
         </div>		
         </section>
    </div>
</div>
	

	</jsp:attribute>
	
	
	<jsp:attribute name="javascript_area">
		<!-- Add javascript here -->
	<script type="text/javascript" src="resources/js/custom/JSOG.js"></script>
	<script type="text/javascript" src="resources/js/custom/main.js"></script>
	<script type="text/javascript" src="resources/js/custom/warehouse.js"></script>
	</jsp:attribute>
</template:template_page>