<%@ taglib prefix="template" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<template:template_page title="Đăng Nhập">
	<jsp:attribute name="head_area">
		<!-- Add  css file here-->
	</jsp:attribute>
	
	<jsp:attribute name="content">
	<h2></h2>
<hr>
<div class="row">
    <div class="col-md-8">
        <section>
            <form id="formLogin">
            <fieldset>
                <h2>Đăng Nhập Vào Hệ Thống.</h2>
                <hr />
                <div class="form-group">
                    <strong class="col-md-2 control-label">Tài Khoản</strong>
                    <div class="col-md-10">
                        <input id="userName" name="userName" class="form-control" type="text"/>
                    </div>
                </div>
                <div class="form-group">
                    <strong class="col-md-2 control-label">Mật Khẩu</strong>
                    <div class="col-md-10">
                        <input id="passWord" id="passWord" class="form-control" type="password"/>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                       <button type="submit" class="btn btn-lg btn-success btn-block">Đăng Nhập</button>
                    </div>
                </div>
               </fieldset>
            </form>
        </section>
    </div>
   
</div>
	
		
	</jsp:attribute>
	
	
	<jsp:attribute name="javascript_area">
		<!-- Add javascript here -->
		<script type="text/javascript" src="resources/js/custom/main.js"></script>
		<script type="text/javascript">
			function UserMandatorys() {
				var username = document.getElementById("userName").value;
				var password = document.getElementById("passWord").value;
				if (username == "" || password == "") {
					if (username == "") {
						document.getElementById("userName").focus();
					} else if (password == "") {
						document.getElementById("passWord").focus();
					}
					alert("Username and Password fields must be filled out");
					return false;
				}
			}
			
			$("#formLogin").submit(function(e) {
				e.preventDefault();
				var inputData = {}
				inputData["userName"] = $('#userName').val();
				inputData["passwordHash"] = $('#passWord').val();
				$.ajax({
					type : "POST",
					url : "./login/check",
					contentType: "application/json; charset=UTF-8",
					data : JSON.stringify(inputData),
					dataType : "json",
					success : function(data) {
						if (data == true) {
							window.location.href = "./";
						} else {
							alert("Tên tài khoản hoặc mật khẩu không đúng !!!");
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						if (jqXHR.status) {
							alert(jqXHR.responseText);
						} else {
							alert("Có lỗi xảy ra!");
						}
					}
				});
			})
		</script>
	</jsp:attribute>
</template:template_page>