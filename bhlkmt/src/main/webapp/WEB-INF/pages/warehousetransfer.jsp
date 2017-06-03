<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<template:template_page title="Lịch sử chuyển kho">
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
		                                        <li class=""><a href="/"><i class="fa fa-dashboard"></i> <span>Trang Chủ</span></a></li>
		                                        <li>
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Hệ Thống</span></a>
		                                            <ul>
		                                                <li>
		                                                    <a href=""><i class="fa fa-caret-right"></i> Phân Quyền</a>
		                                                </li>
		                                                <li class="">
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Sao Lưu/Phục Hồi Database </a>
		                                                </li>
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Nhân Viên</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="./employee"><i class="fa fa-caret-right"></i> Danh Sách Nhân Viên</a>
		                                                </li>
		
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Bán Hàng</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Danh Sách Hóa Đơn</a>
		                                                </li>
		                                                <li class="">
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Lập Hóa Đơn </a>
		                                                </li>
		                                            </ul>
		                                        </li>
		                                        <li>
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Khách Hàng</span></a>
		                                            <ul>
		                                                <li>
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Danh Sách Khách Hàng</a>
		                                                </li>
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Sản Phẩm</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Danh Sách Sản Phẩm</a>
		                                                </li>
		
		                                                <li class="">
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Nhà Sản Xuất </a>
		                                                </li>
		                                                <li class="">
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Loại Sản Phẩm </a>
		                                                </li>
		
		                                            </ul>
		                                        </li>
		                                        <li class="">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Nhà Cung Cấp</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Danh Sách Nhà Cung Cấp</a>
		                                                </li>
		
		
		
		                                            </ul>
		                                        </li>
		                                        <li>
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Tài Chính</span></a>
		                                            <ul>
		
		                                                <li class="">
		                                                    <a href="/"><i class="fa fa-caret-right"></i> Thêm </a>
		                                                </li>
		                                            </ul>
		                                        </li>
		                                        <li class="active">
		                                            <a role="button" tabindex="0"><i class="fa fa-list"></i> <span>Quản Lý Khách Kho</span></a>
		                                            <ul>
		                                                <li class="">
		                                                    <a href="./warehouse"><i class="fa fa-caret-right"></i> Danh sách kho </a>
		                                                </li>
														<li class="active">
		                                                    <a href="./warehousetransfer"><i class="fa fa-caret-right"></i> Lịch sử chuyển kho </a>
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
	<section id="content">
	    <div class="page page-dashboard">
	        <div class="pageheader">
	            <h2><span></span></h2>
	            <div class="page-bar">
	                <ul class="page-breadcrumb">
	                    <li>
	                        <a href="/"><i class="fa fa-home"></i> Trang Chủ</a>
	                    </li>
	                    <li>
	                        <a href="/"></a>
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
                        <h1 class="custom-font" ><strong>Lịch sử chuyển kho</strong> </h1>
                        
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
                                            <strong>Từ Kho</strong>
                                        </th>
                                        <th>
                                            <strong>Đến Kho</strong>
                                        </th>
                                        <th>
                                            <strong>Quản Lý</strong>
                                        </th>
                                        <th style="width: 100px;" >
                                            <strong >Tổng Số Lượng Hàng</strong>
                                        </th>
                                        <th>
                                            <strong>Ngày Chuyển Kho</strong>
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
                                        <strong>Loại Sản Phẩm</strong>
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
                </div>
                
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
	<script type="text/javascript" src="resources/js/custom/JSOG.js"></script>
	<script type="text/javascript" src="resources/js/custom/main.js"></script>
	<script type="text/javascript" src="resources/js/custom/warehousetransfer.js"></script>
	</jsp:attribute>
</template:template_page>