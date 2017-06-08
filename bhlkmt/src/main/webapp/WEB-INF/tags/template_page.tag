<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="head_area" fragment="true" %>
<%@ attribute name="content" fragment="true" %>
<%@ attribute name="javascript_area" fragment="true" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->



    <head>

        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>${title}</title>
        <link rel="icon" type="image/ico" href="${baseURL}/resources/images/favicon.ico" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">




        <!-- ============================================
        ================= Stylesheets ===================
        ============================================= -->
        <!-- vendor css files -->
        <link rel="stylesheet" href="${baseURL}/resources/css/vendor/bootstrap.min.css">
        <link rel="stylesheet" href="${baseURL}/resources/css/vendor/animate.css">
        <link rel="stylesheet" href="${baseURL}/resources/css/vendor/font-awesome.min.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/daterangepicker/daterangepicker-bs3.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/morris/morris.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/owl-carousel/owl.theme.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/rickshaw/rickshaw.min.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/datetimepicker/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/datatables/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/datatables/datatables.bootstrap.min.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/chosen/chosen.css">
        <link rel="stylesheet" href="${baseURL}/resources/js/vendor/summernote/summernote.css">

        <!-- project main css files -->
        <link rel="stylesheet" href="${baseURL}/resources/css/main.css">
        <!--/ stylesheets -->
        <!-- ==========================================
        ================= Modernizr ===================
        =========================================== -->
        <script src="${baseURL}/resources/js/vendor/modernizr/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <!--/ modernizr -->
		<jsp:invoke fragment="head_area" />		
    </head>
    <body id="minovate" class="appWrapper">






        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->












        <!-- ====================================================
        ================= Application Content ===================
        ===================================================== -->
        <div id="wrap" class="animsition">






            <!-- ===============================================
            ================= HEADER Content ===================
            ================================================ -->
            <section id="header">
                <header class="clearfix">

                    <!-- Branding -->
                    <div class="branding">
                        <a class="brand" href="./">
                            <span><strong>BHLK</strong> Máy Tính</span>
                        </a>
                        <a role="button" tabindex="0" class="offcanvas-toggle visible-xs-inline"><i class="fa fa-bars"></i></a>
                    </div>
                    <!-- Branding end -->



                    <!-- Left-side navigation -->
                    <ul class="nav-left pull-left list-unstyled list-inline">
                        <li class="sidebar-collapse divided-right">
                            <a role="button" tabindex="0" class="collapse-sidebar">
                                <i class="fa fa-outdent"></i>
                            </a>
                        </li>
                        <li class="dropdown divided-right settings">
                            <a role="button" tabindex="0" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-cog"></i>
                            </a>
                            <ul class="dropdown-menu with-arrow animated littleFadeInUp" role="menu">
                                <li>

                                    <ul class="color-schemes list-inline">
                                        <li class="title">Header Color:</li>
                                        <li><a role="button" tabindex="0" class="scheme-drank header-scheme" data-scheme="scheme-default"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-black header-scheme" data-scheme="scheme-black"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-greensea header-scheme" data-scheme="scheme-greensea"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-cyan header-scheme" data-scheme="scheme-cyan"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-lightred header-scheme" data-scheme="scheme-lightred"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-light header-scheme" data-scheme="scheme-light"></a></li>
                                        <li class="title">Branding Color:</li>
                                        <li><a role="button" tabindex="0" class="scheme-drank branding-scheme" data-scheme="scheme-default"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-black branding-scheme" data-scheme="scheme-black"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-greensea branding-scheme" data-scheme="scheme-greensea"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-cyan branding-scheme" data-scheme="scheme-cyan"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-lightred branding-scheme" data-scheme="scheme-lightred"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-light branding-scheme" data-scheme="scheme-light"></a></li>
                                        <li class="title">Sidebar Color:</li>
                                        <li><a role="button" tabindex="0" class="scheme-drank sidebar-scheme" data-scheme="scheme-default"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-black sidebar-scheme" data-scheme="scheme-black"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-greensea sidebar-scheme" data-scheme="scheme-greensea"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-cyan sidebar-scheme" data-scheme="scheme-cyan"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-lightred sidebar-scheme" data-scheme="scheme-lightred"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-light sidebar-scheme" data-scheme="scheme-light"></a></li>
                                        <li class="title">Active Color:</li>
                                        <li><a role="button" tabindex="0" class="scheme-drank color-scheme" data-scheme="drank-scheme-color"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-black color-scheme" data-scheme="black-scheme-color"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-greensea color-scheme" data-scheme="greensea-scheme-color"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-cyan color-scheme" data-scheme="cyan-scheme-color"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-lightred color-scheme" data-scheme="lightred-scheme-color"></a></li>
                                        <li><a role="button" tabindex="0" class="scheme-light color-scheme" data-scheme="light-scheme-color"></a></li>
                                    </ul>

                                </li>

                                <li>
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="col-xs-8 control-label">Fixed header</label>
                                            <div class="col-xs-4 control-label">
                                                <div class="onoffswitch lightred small">
                                                    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="fixed-header" checked="">
                                                    <label class="onoffswitch-label" for="fixed-header">
                                                        <span class="onoffswitch-inner"></span>
                                                        <span class="onoffswitch-switch"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="col-xs-8 control-label">Fixed aside</label>
                                            <div class="col-xs-4 control-label">
                                                <div class="onoffswitch lightred small">
                                                    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="fixed-aside" checked="">
                                                    <label class="onoffswitch-label" for="fixed-aside">
                                                        <span class="onoffswitch-inner"></span>
                                                        <span class="onoffswitch-switch"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- Left-side navigation end -->
                    <!-- Search -->
                    <div class="search" id="main-search">
                        <input type="text" class="form-control underline-input" placeholder="Search...">
                    </div>
                    <!-- Search end -->
                    <!-- Right-side navigation -->
                    <ul class="nav-right pull-right list-inline">
                         <ul class="nav navbar-nav navbar-right">
				            <li class="dropdown nav-profile">
				                <a href="" class="dropdown-toggle" data-toggle="dropdown">
				<!--                     @*<img src="assets/images/profile-photo.jpg" alt="" class="img-circle size-30x30">*@ -->
				                    <span>Xin Chào <i class="fa fa-angle-down"></i></span>
				                </a>
				                <ul class="dropdown-menu animated littleFadeInRight" role="menu">
				                    <li>
				                        <a role="button" tabindex="0" asp-controller="Manage" asp-action="Index" title="Manage">
				                           
				                            <i class="fa fa-user"> Cá Nhân </i> 
				                        </a>
				                    </li>
				                    
				                    <li>
				                        <a role="button" tabindex="0">
				                            <i class="fa fa-cog"> Cài đặt</i> 
				                        </a>
				                    </li>
				                    <li class="divider"></li>                    
				                    <li>
				                        <a role="button" tabindex="0">
				                            <form asp-area="" asp-controller="Account" asp-action="LogOff" method="post" id="logoutForm" class="">
				                                <i class="fa fa-sign-out"><input type="submit" class="btn btn-link" value="Đăng Xuất"></i>
				                            </form>
				                        </a>
				                    </li>
				
				                    
				                </ul>
				            </li>
				            <li class="col-lg-10">
				            </li>          
				        </ul>
                    </ul>
                    <!-- Right-side navigation end -->



                </header>

            </section>
            <!--/ HEADER Content  -->

        	
        	<jsp:invoke fragment="content" />
        		<!-- data will be rendered here -->
        </div>
        <!--/ Application Content -->














        <!-- ============================================
        ============== Vendor JavaScripts ===============
        ============================================= -->
        <script src="${baseURL}/resources/js/vendor/jquery/jquery-1.11.2.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/bootstrap/bootstrap.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/jRespond/jRespond.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/sparkline/jquery.sparkline.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/animsition/js/jquery.animsition.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/screenfull/screenfull.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/datatables/extensions/dataTables.bootstrap.js"></script>
        <script src="${baseURL}/resources/js/vendor/chosen/chosen.jquery.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/summernote/summernote.min.js"></script>
        <script src="${baseURL}/resources/js/vendor/coolclock/coolclock.js"></script>
        <script src="${baseURL}/resources/js/vendor/coolclock/excanvas.js"></script>
		<script src="${baseURL}/resources/js/vendor/chosen/chosen.jquery.min.js"></script>
		<script src="${baseURL}/resources/js/vendor/parsley/parsley.min.js"></script>
        <!--/ vendor javascripts -->




        <!-- ============================================
        ============== Custom JavaScripts ===============
        ============================================= -->
        <script src="${baseURL}/resources/js/main.js"></script>
        <!--/ custom javascripts -->
		
		<jsp:invoke fragment="javascript_area" />
        <!-- ===============================================
        ============== Page Specific Scripts ===============
        ================================================ -->
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='https://www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
        </script>

    </body>
</html>