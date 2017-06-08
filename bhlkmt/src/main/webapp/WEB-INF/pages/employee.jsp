<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<template:template_page title="Nhân viên">
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
                                        <li class="active">
                                            <a role="button"
											tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Nhân Viên</span></a>
                                            <ul>
                                                <li class="active">
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
	
	                                <select id="searchtype" style="width: 95px; height: 30px;">
	                                    <option value="1">Mã</option>
	                                    <option value="2">Tên</option>
	                                    <option value="3">Vị Trí</option>
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
	
	                        <h1 class="custom-font"><strong>Danh Sách Nhân Viên</strong> </h1>
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
	                                            <strong class="">Vị trí</strong>
	                                        </th>
	                                        <th style="width: 10%" ;>
	                                            <strong>Mã</strong>
	                                        </th>
	                                        <th>
	                                            <strong>Họ Tên</strong>
	                                        </th>
	                                        <th>
	                                            <strong>Giới Tính</strong>
	                                        </th>
	                                        <th>
	                                            <strong>Số Điện Thoại</strong>
	                                        </th>
	                                        <th>
	                                            <strong>Ngày Vào Làm</strong>
	                                        </th>
	                                        <th style="width: 160px;" class="no-sort">Actions</th>
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
	
	<!-- Modal Create -->
	<div id="create" class="modal fade" role="dialog">
	    <div class="modal-dialog modal-lg">
	
	        <!-- Modal content-->
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	                <h4 class="modal-title">Thêm Nhân Viên</h4>
	 
	            </div>
	            <div class="modal-body">
	                <form class="form-horizontal" role="form" id="form3" name="CreateForm" data-parsley-validate>
	                    
	                    <div class="form-group">
	                        <span id="error-create"></span>
	                    </div>
						<div class="form-group hidden">
	                        <strong for="input01" class="col-sm-2 control-label">ID</strong>
	                        <div class="col-sm-2">
	                            <input type="text" class="form-control" id="id" value="0">
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Mã</strong>
	                        <div class="col-sm-3">
	                            <input type="text" class="form-control" id="employeeCode" autofocus data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Họ Tên</strong>
	                        <div class="col-sm-6">
	                            <input type="text" class="form-control" id="employeeName" autofocus data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label class="col-sm-2 control-label"><strong>Giới Tính</strong></label>
	                        <div class="col-sm-3">
	                            <select tabindex="3" class="chosen-select" id="gender" style="width: 100px;">
	                                <option value="Nam">Nam</option>
	                                <option value="Nữ">Nữ</option>
	                            </select>
	                        </div>
	
	                  
	                        <strong class="col-sm-2 control-label">Vị Trí</strong>
	                        <div class="col-sm-3">
	                            <select tabindex="3" class="chosen-select" id="pos" style="width: 200px;" required>
	                            </select>
	                        </div>
	
	                    </div>
	                    <div class="form-group">
	                        <strong class="col-sm-2 control-label">Ngày Sinh</strong>
	                        <div class="col-sm-3">
	                            <input type="date" class="form-control" id="birthday" placeholder="mm//dd/yyyy"  data-parsley-trigger="change" required>
	                            <span id="error-birthday"></span>
	                        </div>
	                
	                        <strong class="col-sm-2 control-label">Ngày Vào Làm</strong>
	                        <div class="col-sm-3">
	                            <input type="date" class="form-control" id="startdate" placeholder="mm//dd/yyyy"  data-parsley-trigger="change" required>
	                            <span id="error-startdate"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Địa Chỉ</strong>
	                        <div class="col-sm-8">
	                            <input type="text" class="form-control" id="address"  data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Số Điện Thoại</strong>
	                        <div class="col-sm-2">
	                            <input type="text" class="form-control" id="phone" placeholder="(XXX) XXXX XXX" ng-model="fc18"
	                                   data-parsley-trigger="change"
	                                   pattern="^[\d\+\-\.\(\)\/\s]*$"
	                                   data-parsley-length="[10,12]" required
	                                  >
	                        </div>
	                    </div>                                       
	                    <hr class="line-dashed line-full" />
	                    <label class="text-blue" >Thông Tin Tài Khoản</label>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Email</strong>
	                        <div class="col-sm-6">
	                            <input type="email" class="form-control" id="email" data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Username</strong>
	                        <div class="col-sm-6">
	                            <input type="text" class="form-control" id="username" data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Mật Khẩu</strong>
	                        <div class="col-sm-6">
	                            <input type="password" class="form-control" data-parsley-length="[4, 20]" id="password" data-parsley-trigger="change" required>
	                            <h4 class="text-greensea">Mật khẩu phải bao gồm : </h4>
	                            <h5 class="text-greensea"> - Ít Nhất 1 kí tự đặc biệt (!#..)</h5>
	                            <h5 class="text-greensea"> - Một chữ cái in hoa</h5>
	                            <h5 class="text-greensea"> - Một chữ số</h5>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Xác Nhận Mật Khẩu</strong>
	                        <div class="col-sm-6">
	                            <input type="password" class="form-control" id="confirmPassword" data-parsley-length="[4, 20]" data-parsley-trigger="change"  data-parsley-equalto="#passw" required>
	                        </div>
	                    </div>
					
					<button id="submitform" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-6">Lưu</button>
                    <button type="reset" class="btn btn-ef btn-ef-2 btn-ef-2-danger btn-ef-2a mb-10 col-sm-6 ">Xóa dữ liệu đã nhập</button>
	
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
	                <h4 class="modal-title">Sửa Thông Tin Nhân Viên</h4>
	            </div>
	            <div class="modal-body">
	                <form class="form-horizontal" role="form" id="formedit" name="editForm" data-parsley-validate>
	                    <div class="form-group">
	                        <span id="error-edit"></span>
	                    </div>
	                    <div class="form-group" hidden>
	                        <input hidden type="text" class="form-control" id="id1" autofocus data-parsley-trigger="change">
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Mã</strong>
	                        <div class="col-sm-3">
	                            <input type="text" disabled class="form-control" id="employeeCode1" autofocus data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Họ Tên</strong>
	                        <div class="col-sm-6">
	                            <input type="text" class="form-control" id="employeeName1" autofocus data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label class="col-sm-2 control-label"><strong>Giới Tính</strong></label>
	                        <div class="col-sm-3">
	                            <select tabindex="3" class="chosen-select" id="gender1" style="width: 100px;">
	                                <option value="Nam">Nam</option>
	                                <option value="Nữ">Nữ</option>
	                            </select>
	                        </div>
	
	                   
	                        <strong class="col-sm-2 control-label">Vị Trí</strong>
	                        <div class="col-sm-3">
	                            <select tabindex="3" class="chosen-select" id="pos1" style="width: 200px;">
	                            </select>
	                        </div>
	
	                    </div>
	                    <div class="form-group">
	                        <strong class="col-sm-2 control-label">Ngày Sinh</strong>
	                        <div class="col-sm-3">
	                            <input type="date" class="form-control" id="birthday1" placeholder="mm//dd/yyyy" data-parsley-trigger="change" required>
	                            <span id="error-birthday1"></span>
	                        </div>
	                  
	                        <strong class="col-sm-2 control-label">Ngày Vào Làm</strong>
	                        <div class="col-sm-3">
	                            <input type="date" class="form-control" id="startdate1" value="2015-01-01" placeholder="mm//dd/yyyy" data-parsley-trigger="change" required>
	                            <span id="error-startdate1"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Địa Chỉ</strong>
	                        <div class="col-sm-8">
	                            <input type="text" class="form-control" id="address1" data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Số Điện Thoại</strong>
	                        <div class="col-sm-2">
	                            <input type="text" class="form-control" id="phone1" placeholder="(XXX) XXXX XXX" ng-model="fc18"
	                                   data-parsley-trigger="change"
	                                   pattern="^[\d\+\-\.\(\)\/\s]*$"
	                                   data-parsley-length="[10,12]"
	                                   required>
	                        </div>
	                    </div>
	                    <<div class="form-group" hidden>
	                        <strong for="input01" class="col-sm-2 control-label">Email</strong>
	                        <div class="col-sm-6">
	                            <input type="email" class="form-control" id="email1" data-parsley-trigger="change">
	                        </div>
	                    </div>
	                    <div class="form-group" hidden>
	                        <input hidden type="text" class="form-control" id="user1" autofocus data-parsley-trigger="change">
	                    </div>
	                    <hr class="line-dashed line-full" />
	                    <div class="form-group">
	                        <div class="col-sm-6 col-sm-offset-2">
	                            <button type="submit" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-3">Lưu</button>
	                            <button type="reset" class="btn btn-ef btn-ef-2 btn-ef-2-danger btn-ef-2a mb-10 ">Xóa dữ liệu đã nhập</button>
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
		<script type="text/javascript" src="resources/js/custom/main.js"></script>
		<script type="text/javascript" src="resources/js/custom/employee.js"></script>
	</jsp:attribute>
</template:template_page>