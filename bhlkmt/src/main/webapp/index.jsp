<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<template:template_page title="Trang Chủ">
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
		                                                <li class="">
		                                                    <a href="/warehousetransfer"><i class="fa fa-caret-right"></i> Lịch sử chuyển kho </a>
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
		            <h2>Admin <span> Thông Báo</span></h2>
		            <div class="page-bar">
		                <ul class="page-breadcrumb">
		                    <li>
		                        <a href="index.html"><i class="fa fa-home"></i> Trang Chủ</a>
		                    </li>
		                    
		                </ul>
		               
		            </div>
		        </div>
		        <div class="row">
		            <!-- col -->
		            <div class="col-md-12">
		                <!-- tile -->
		                <img  src="resources/images/store.jpg" height="250" width="1058" alt="logo">
		            </div>
		        </div>
		       
		        <!-- row -->
		        <div class="row">
		            <!-- col -->
		            <div class="col-md-6">
		                <!-- tile -->
		                <section class="tile tile-simple bg-lightred" style="min-height: 190px; overflow: hidden;">
		                    <!-- tile header -->
		                    <div class="tile-header">
		                        <h1 class="custom-font">Kế Hoạch Trong Tuần </h1>
		                        <ul class="controls">
		                            <li class="remove"><a role="button" tabindex="0" class="tile-close"><i class="fa fa-times"></i></a></li>
		                        </ul>
		                    </div>
		                    <!-- /tile header -->
		                    <!-- tile body -->
		                    <div class="tile-body">
		                        <div id="todo-carousel" class="owl-carousel">
		                            <div>
		                                <div class="progress-list">
		                                    <div class="details">
		                                        <div class="title"><i class="fa fa-caret-right mr-5"></i> <span class="text-md">Nhập Hàng Vào Kho 1</span></div>
		                                        <div class="description text-transparent-white text-lowercase">Ưu Tiên, Từ Ngày: 01.01.2017</div>
		                                    </div>
		                                    <div class="clearfix" style="height: 45px"></div>
		                                    <div class="progress transparent-black not-rounded mb-10">
		                                        <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
		                                            50%
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="pull-right">
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs mr-5" style="width:22px;"><i class="fa fa-thumbs-o-up"></i></button>
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs mr-5" style="width:22px;"><i class="fa fa-caret-down"></i></button>
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs" style="width:22px;"><i class="fa fa-ellipsis-h"></i></button>
		                                </div>
		                                <p class="text-thin">Hạn: <strong>12h 15m</strong></p>
		                            </div>
		                            <div>
		                                <div class="progress-list">
		                                    <div class="details">
		                                        <div class="title"><i class="fa fa-caret-right mr-5"></i> <span class="text-md">Liên Lạc Với Nhà Cung Cấp ABC</span></div>
		                                        <div class="description text-transparent-white text-lowercase">Ngày: 07.01.2017</div>
		                                    </div>
		                                    <div class="clearfix" style="height: 45px"></div>
		                                    <div class="progress transparent-black not-rounded mb-10">
		                                        <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
		                                            0%
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="pull-right">
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs mr-5" style="width:22px;"><i class="fa fa-thumbs-o-up"></i></button>
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs mr-5" style="width:22px;"><i class="fa fa-caret-down"></i></button>
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs" style="width:22px;"><i class="fa fa-ellipsis-h"></i></button>
		                                </div>
		                                <p class="text-thin">Deadline: <strong>2d 9h 45m</strong></p>
		                            </div>
		                            <div>
		                                <div class="progress-list">
		                                    <div class="details">
		                                        <div class="title"><i class="fa fa-caret-right mr-5"></i> <span class="text-md">Báo Cáo Thông Kê Tài Chính Trong Tháng</span></div>
		                                        <div class="description text-transparent-white text-lowercase">31.01.2017</div>
		                                    </div>
		                                    <div class="clearfix" style="height: 45px"></div>
		                                    <div class="progress transparent-black not-rounded mb-10">
		                                        <div class="progress-bar" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%;">
		                                            78%
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="pull-right">
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs mr-5" style="width:22px;"><i class="fa fa-thumbs-o-up"></i></button>
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs mr-5" style="width:22px;"><i class="fa fa-caret-down"></i></button>
		                                    <button type="button" class="btn btn-border btn-rounded-20 btn-white btn-xs" style="width:22px;"><i class="fa fa-ellipsis-h"></i></button>
		                                </div>
		                                <p class="text-thin">Deadline: <strong>1h 5m</strong></p>
		                            </div>
		                        </div>
		                    </div>
		                    <!-- /tile body -->
		                </section>
		                <!-- /tile -->
		                <!-- tile -->
		                
		
		            </div>
		            <!-- /col -->
		          
		            <!-- col -->
		            <div class="col-md-6">
		                <!-- tile -->
		                <section class="tile tile-simple" style="min-height: 190px; overflow: hidden;">
		                    <!-- tile header -->
		                    <div class="tile-header p-0">
		                        <ul class="controls">
		                            <li class="remove"><a role="button" tabindex="0" class="tile-close"><i class="fa fa-times"></i></a></li>
		                        </ul>
		                    </div>
		                    <!-- /tile header -->
		                    <!-- tile body -->
		                    <div class="tile-body lined-paper">
		                        <div id="notes-carousel" class="owl-carousel">
		                            <div>
		                                <h4 class="mt-5 mb-5">Thông báo #1</h4>
		                                <p class="text-muted mb-10">
		                                Lịch Nghỉ Tết Dương Lịch : Từ ngày 31-12 đếng ngày 2-1
		                                </p>
		                            </div>
		                            <div>
		                                <h4 class="mt-5 mb-5">Thông báo 2 #2</h4>
		                                <p class="text-muted mb-10"> Nhân viên nhận lương từ ngày 5 - 7 /01</p>
		                            </div>
		                            <div>
		                                <h4 class="mt-5 mb-5">Thông Báo 3 #3</h4>
		                                <p class="text-muted mb-10">Merry Christmas and Happy new year ! </p>
		                            </div>
		                        </div>
		                    </div>
		                    <!-- /tile body -->
		                </section>
		                <!-- /tile -->
		            </div>
		            <!-- /col -->
		        </div>
		    </div>
		</section>
	</jsp:attribute>
	
	
	<jsp:attribute name="javascript_area">
		<!-- Add javascript here -->
		<script type="text/javascript">
		/* Add js here */
		</script>
	</jsp:attribute>
</template:template_page>