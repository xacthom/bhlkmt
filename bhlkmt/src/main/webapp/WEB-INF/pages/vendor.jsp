<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<template:template_page title="Nhà Cung Cấp">
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
	                                    <option value="3">website</option>
	                                    
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
	                        <h1 class="custom-font"><strong>Danh Sách Nhà Cung Cấp</strong> </h1>
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
	                                        <th class="">
	                                            <strong class="">STT</strong>
	                                        </th>
	                                        <th class="col-sm-1">
	                                            <strong >Mã</strong>
	                                        </th>
	                                        <th class="col-sm-2">
	                                            <strong>Tên Nhà Cung Cấp</strong>
	                                        </th>
	                                        <th class="col-sm-4">
	                                            <strong>website</strong>
	                                        </th>
	
	                                        <th class="col-sm-2">
	                                            <strong>Trạng Thái</strong>
	                                        </th>
	
	                                        <th style="width: 160px;" class="col-sm-1">Actions</th>
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
	                <h4 class="modal-title">Thêm Nhà Cung Cấp</h4>
	
	            </div>
	            <div class="modal-body">
	                <form class="form-horizontal" role="form" name="CreateForm" id="form3" data-parsley-validate>
	                    <div class="form-group">
	                        <span id="error-create"></span>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Mã</strong>
	                        <div class="col-sm-2">
	                            <input type="text" class="form-control" id="code" name="vendorCode" autofocus data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Tên Nhà Cung Cấp</strong>
	                        <div class="col-sm-6">
	                            <input type="text" class="form-control" id="name" name="vendorName" autofocus data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Địa chỉ website</strong>
	                        <div class="col-sm-4">
	                            <input type="url" class="form-control" id="web" name="website" value="http://" data-parsley-trigger="change" required>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <strong for="input01" class="col-sm-2 control-label">Mô Tả</strong>
	                        <div class="col-sm-4">
	                            <textarea name="Text1" cols="40" rows="5" name="descripition"  class="form-control" id="description"  required></textarea>
	                           
	                        </div>
	                    </div>
	
	                    <hr class="line-dashed line-full" />
	                   
	                        <div class="col-sm-6 col-sm-offset-2">
	                            <button type="submit" id="CreateFormSubmit" value="Create" class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-3">Lưu</button>
	                            <button type="reset"  class="btn btn-ef btn-ef-2 btn-ef-2-danger btn-ef-2a mb-10 ">Xóa dữ liệu đã nhập</button>
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
                <h4 class="modal-title">Sửa Thông Tin Nhân Viên</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="formedit" name="CreateForm" data-parsley-validate>
                    <div class="form-group">
                        <span id="error-edit"></span>
                    </div>
                    <div class="form-group" hidden>
                        <input hidden type="text" class="form-control" id="id1" autofocus data-parsley-trigger="change" required>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Mã</strong>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="code1" autofocus data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Tên Nhà Cung Cấp</strong>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="name1" autofocus data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Địa chỉ website</strong>
                        <div class="col-sm-4">
                            <input type="url" class="form-control" id="web1" value="http://" data-parsley-trigger="change" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><strong>Trạng Thái</strong></label>
                        <div class="col-sm-3">
                            <select tabindex="3" class="chosen-select" id="status" style="width: 100px;">
                                <option value="true">Kích Hoạt</option>
                                <option value="false">Vô hiệu hóa</option>
                            </select>
                        </div>

                    </div>
                    <div class="form-group">
                        <strong for="input01" class="col-sm-2 control-label">Mô Tả</strong>
                        <div class="col-sm-4">
                            <textarea name="Text1" cols="40" rows="5" class="form-control" id="description1" required></textarea>

                        </div>
                    </div>
                    <hr class="line-dashed line-full" />
                    <div class="form-group">
                        <div class="col-sm-6 col-sm-offset-2">
                            <button class="btn btn-ef btn-ef-2 btn-ef-2-primary btn-ef-2a mb-10 col-sm-3">Lưu</button>
                            <button type="reset" class="btn btn-rounded btn-ef btn-ef-2 btn-ef-2-danger btn-ef-2b mb-10">Xóa dữ liệu đã nhập</button>
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
	<script type="text/javascript">
        $(window).load(function () {
            //$("#refresh").click(function () {
            abc();
            //});
           
        });

        function abc(){
        	var url = window.location;
            $.ajax({
                type: "GET",
            	url: "./vendor/get",
            	contentType: 'application/json',
            	dataType: 'json',
                success: function (result) {
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
                    var temp = data[i];
                    var stt = i + 1;
                    if (temp.website != null) {
                        var sd = temp.website.substring(8);
                    }

                    else { sd = temp.website; }
                    if (temp.isActive == true) {
                        var active = "<td class=\"col-md-1\"><h5 class=\"text-greensea\">Hoạt Động</h5></td>";

                    }
                    else {
                        active = "<td class=\"col-md-1\"><h5 class=\"text-red\">Vô Hiệu</h5></td>";

                    }
                    result.append("<tr><td>" + stt + "</td>" +
                                        "<td hidden> <input type=\"text\" id=\"" + temp.vendorId + "\"value=\"" + temp.vendorId + "\"></td>" +
                                        "<td>" + temp.vendorCode + "</td>" +
                                        "<td class=\"col-xs-6 col-sm-3\">" + temp.vendorName + "</td>" +
                                        "<td>" + sd + "</td>" +
                                        active +

                                        "<td class=\"actions\">" +
                                            "<a role=\"button\" tabindex=\"0\" onclick=\"Edit(" + temp.vendorId + ")\" class=\"edit text-primary text-uppercase text-strong text-sm mr-10\">Sửa</a>" +
                                            "<a role=\"button\" tabindex=\"0\" onclick=\"Del(" + temp.vendorId + ")\"    class=\"delete text-danger text-uppercase text-strong text-sm mr-10\">Xóa</a>" +
                                        "</td></tr>");
                }
            }
            else {
                result.append("<tr class=\"odd\"><td valign=\"top\" colspan=\"3\" class=\"dataTables_empty\">.......Không Có Dữ Liệu ....</td></tr>")

            }

        };

        function Del(id) {
            if (confirm("Bạn có muốn xóa không?") == false) {
                return;
            }
            else {
            	var inputData = {}
        		inputData["vendorId"] = id;
                $.ajax({
                    type: "POST", // here is your problem
                    url: "./vendor/del",
                    data: JSON.stringify(inputData),
                    contentType: 'application/json',
	                dataType: "json",
	                success: function(result) {
	                	if(result == true){
		                    alert("Xóa Thành Công");
		                    abc();
	                	}
	                	else
	                		alert("Xóa không thành công");
	                },
	                error: function(data) {
	                    alert("error");
	                }
	            });
	        }
        }
    //gọi create action
    $("#form3").submit(function (e) {
        //nếu form đã validate
        if (this.checkValidity()) {
            e.preventDefault();
            var inputData = {};
            inputData['vendorCode'] = $("#code").val();
            inputData['vendorName'] = $("#name").val();
            inputData['website'] = $("#web").val();
            inputData['descripition'] = $("#description").val();
            $.ajax({
                type: "POST",
                url: "./vendor/add",
                contentType: 'application/json',
                data: JSON.stringify(inputData),
	            dataType: "json",
	            success: function (result) {
	                if (result == true) {
	                    $('#create').modal('hide');
	                    $('#success').addClass("alert alert-success");
	                    $('#success').text("Thêm Thành Công");
	                    abc();
	
	                }
	                else {
	                    $('#error-create').addClass("alert alert-danger");
	                    $('#error-create').text("Thêm Không Thành Công! Vui lòng thử lại!");
	                }
	            },
	            error: function (result) {
					alert("Co Loi Xay Ra");
				}
	
	            });
	    }

    })

        

 

    //edit model
    function Edit(id) {
    	var inputData = {}
    	inputData["vendorId"] = id;
        $.ajax({
            type: "POST", 
            url: "./vendor/getById",
            contentType: "application/json; charset=UTF-8",
            data: JSON.stringify(inputData),
	        dataType: "json",
	        success: function (data) {
	            //open edit model
	            $('#edit').modal('toggle');
	            //format date
	            //fill data into edit model
	            $("#id1").val(data.vendorId);
	            $("#code1").val(data.vendorCode);
	            $("#name1").val(data.vendorName);
	            $("#web1").val(data.website);
	            $("#description1").val(data.descripition);
	            $("#status").val(""+data.isActive);
	             
	        },
	        error: function(data) {
	            alert("Xảy ra lỗi!");
	        }
	    });
    }

    $("#formedit").submit(function (e) {
        //nếu form đã validate
        if (this.checkValidity()) {
            e.preventDefault();
            var inputData = {};
            inputData['vendorId'] = $("#id1").val();
            inputData['vendorCode'] = $("#code1").val();
            inputData['isActive'] = $("#status").val();
            inputData['vendorName'] = $("#name1").val();
            inputData['website'] = $("#web1").val()
            inputData['descripition'] = $("#description1").val()
            $.ajax({
                type: "POST",
                url: "./vendor/edit",
                contentType: 'application/json',
                data: JSON.stringify(inputData),
	            dataType: "json",
	            success: function (data) {
	                if (data == true) {
	                    $('#edit').modal('hide');
	                    $('#success').addClass("alert alert-success");
	                    $('#success').text("Sửa Thành Công");
	                    abc();
	                }
	                else {
	                    $('#error-edit').addClass("alert alert-danger");
	                    $('#error-edit').text("Sửa Không Thành Công! Vui lòng thử lại!");
	                }
	            },
	            error: function (data) {
	                alert("Lỗi xảy ra !!");
	
	            },
            });
    }

    })
    // tifm kieesm
    $('#search').click(function (e) {
        var searchstring = $('#searchdata').val();
        if (searchstring != "") {
            var searchtype = $('#searchtype').val();
            $.ajax({
                type: "GET",
                url: "",
                data: {
                    'search': searchstring,
                    'type': searchtype,
                       
                    },
            dataType: "json",
            success: function (data) {                     
                loadData(data);
            },
            error: function (data) {
                alert("Lỗi xảy ra !!");

            }
        })
            }
    })

        $('#searchdata').on('input', function (e) {
            if ($(this).val() == "") {
                abc();
            }
        });

</script>
	</jsp:attribute>
</template:template_page>