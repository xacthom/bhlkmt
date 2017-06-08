<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<template:template_page title="Loại Sản Phẩm">
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
                                        <li class="active">
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
                                                <li class="active">
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
		    ========================= Form ==========================
		    ===================================================== -->
		    <div class="page page-tables-datatables">
		        <div class="row">
		            <!-- col -->
		            <div class="col-md-6">
		                <!-- tile -->
		                <section class="tile">
		                    <div class="row-border">
		                        <div class="col-sm-2"></div>
		                        <div class="input-group">
		                            <select id="searchtype"
										style="width: 25%; height: 30px;">
		                                <option value="1">Mã</option>
		                                <option value="2">Tên</option>
		                            </select>
		                            <input id="searchdata" style="width: 75%;"
										type="text" class="input-sm form-control"
										placeholder="Tìm Kiếm...">
		                            <span class="input-group-btn">
		                                <button id="search"
											class="btn btn-sm btn-success" type="button">
													<i class="fa fa-search"></i>
										</button>
		                            </span>
		                        </div>
		
		
		                    </div>
		                    <!-- tile header -->
		                    <div class="tile-header dvd dvd-btm">
		                        <h1 class="custom-font">
											<strong>Danh Sách Loại Sản Phẩm</strong> </h1>
		                        <ul class="controls">
		                            <li>
		                                <a id="btnCreate" role="button"
										tabindex="0" id=""><i class="fa fa-plus mr-5"></i>Thêm</a>
		                            </li>
		                            <li class="dropdown">
		
		                                <a role="button" tabindex="0"
										class="dropdown-toggle settings" data-toggle="dropdown">
		                                    <i class="fa fa-cog"></i>
		                                    <i class="fa fa-spinner fa-spin"></i>
		                                </a>
		
		                                <ul
											class="dropdown-menu pull-right with-arrow animated littleFadeInUp">
		                                    <li>
		                                        <a role="button" tabindex="0"
												class="tile-toggle">
		                                            <span class="minimize"><i
														class="fa fa-angle-down"></i>&nbsp;&nbsp;&nbsp;Nhỏ</span>
		                                            <span class="expand"><i
														class="fa fa-angle-up"></i>&nbsp;&nbsp;&nbsp;Mở Rộng</span>
		                                        </a>
		                                    </li>
		                                    <li>
		                                        <a id="refresh" role="button"
												tabindex="0" class="tile-refresh">
		                                            <i class="fa fa-refresh"></i> Tải Lại
		                                        </a>
		                                    </li>
		                                    <li>
		                                        <a role="button" tabindex="0"
												class="tile-fullscreen">
		                                            <i class="fa fa-expand"></i> Toàn Màn Hình
		                                        </a>
		                                    </li>
		                                </ul>
		
		                            </li>
		                        </ul>
		                    </div>
		                    <!-- /tile header -->
		                    <!-- tile body -->
		                    <div class="tile-body">
		                        <div class="table-responsive">
		                            <table class="table table-custom" id="">
		                                <thead>
		                                    <tr>
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
		                                            <strong>Tên Hãng</strong>
		                                        </th>
		
		                                        <th style="width: 160px;"
													class="no-sort">Actions</th>
		                                    </tr>
		                                </thead>
		                                <tbody id="hello"></tbody>
		                            </table>
		                        </div>
		                    </div>
		                    <!-- /tile body -->      
		                    
		                                
		                </section>
		                <!-- /tile -->
		            </div>  
		            <div class="col-md-6">
		                <!-- tile -->
		                <section id="sectionFormInput" class="tile">
		                
		                    <div class="tile-header dvd dvd-btm">
		                        <h1 id="titleFormInput" class="custom-font">
											<strong>Thêm Loại Sản Phẩm</strong>
										</h1>
		                        <ul class="controls">
		                            <li class="dropdown">
		
		                                <a role="button" tabindex="0"
										class="dropdown-toggle settings" data-toggle="dropdown">
		                                    <i class="fa fa-cog"></i>
		                                    <i class="fa fa-spinner fa-spin"></i>
		                                </a>
		
		                                <ul
											class="dropdown-menu pull-right with-arrow animated littleFadeInUp">
		                                    <li>
		                                        <a role="button" tabindex="0"
												class="tile-toggle">
		                                            <span class="minimize"><i
														class="fa fa-angle-down"></i>&nbsp;&nbsp;&nbsp;Minimize</span>
		                                            <span class="expand"><i
														class="fa fa-angle-up"></i>&nbsp;&nbsp;&nbsp;Expand</span>
		                                        </a>
		                                    </li>
		                                    <li>
		                                        <a role="button" tabindex="0"
												class="tile-refresh">
		                                            <i class="fa fa-refresh"></i> Refresh
		                                        </a>
		                                    </li>
		                                    <li>
		                                        <a role="button" tabindex="0"
												class="tile-fullscreen">
		                                            <i class="fa fa-expand"></i> Fullscreen
		                                        </a>
		                                    </li>
		                                </ul>
		
		                            </li>
		                            <li class="remove"><a role="button"
										tabindex="0" class="tile-close"><i class="fa fa-times"></i></a></li>
		                        </ul>
		                    </div>
		                    <!-- /tile header -->
		                    <div class="tile-body">
		 
		                        <form class="form-horizontal" role="form"
									id="form3" name="CreateForm" data-parsley-validate action="">
		
		                                <div class="form-group">
		    
		                                    <div class="col-sm-3" hidden>
		                                        <input type="text"
												class="form-control" id="id" value="0">
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <strong for="input01"
											class="col-sm-2 control-label">Mã</strong>
		                                    <div class="col-sm-3">
		                                        <input type="text"
												class="form-control" id="code" autofocus
												data-parsley-trigger="change" required>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <strong for="input01"
											class="col-sm-2 control-label">Tên Hãng</strong>
		                                    <div class="col-sm-6">
		                                        <input type="text"
												class="form-control" id="name" autofocus
												data-parsley-trigger="change" required>
		                                    </div>
		                                </div>
		
		                                <hr class="line-dashed line-full" />
		                                <div class="form-group">
		                                    <div
											class="col-sm-8 col-sm-offset-2">
		                                        <span id="success"></span>
		                                        <span id="error"></span>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <div id="action"
											class="col-sm-6 col-sm-offset-2">
		                                        <button id="btnSubmit" type="submit"
												id="CreateFormSubmit" value="Create"
												class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10">Lưu</button>
		                                        <button id="btnReset" type="reset"
												class="btn btn-ef btn-ef-2 btn-ef-2-danger btn-ef-2a mb-10 ">Nhập lại</button>
		                                    </div>
		                                </div>
		
		                            </form>
		                        
		                     </div>
		                </section>
		                <!-- /tile -->
		            </div>            
		         </div>
		    </div>
		    <!--/ Form -->
		</section>
	</jsp:attribute>

	<jsp:attribute name="javascript_area">
		<!-- Add javascript here -->
	    <script type="text/javascript"
			src="resources/js/custom/componentType.js"></script>
	</jsp:attribute>
</template:template_page>

