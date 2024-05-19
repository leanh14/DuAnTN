
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">

<!-- molla/checkout.html  22 Nov 2019 09:55:06 GMT -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Tra cứu đơn hàng</title>
    <meta name="keywords" content="HTML5 Template">
    <meta name="description" content="Molla - Bootstrap eCommerce Template">
    <meta name="author" content="p-themes">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="/user/assets/images/icons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/user/assets/images/logo-black.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/user/assets/images/logo-black.png">
    <link rel="manifest" href="/user/assets/images/icons/site.html">
    <link rel="mask-icon" href="/user/assets/images/icons/safari-pinned-tab.svg" color="#666666">
    <link rel="shortcut icon" href="/user/assets/images/logo-black.png">
    <meta name="apple-mobile-web-app-title" content="Molla">
    <meta name="application-name" content="Molla">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config" content="/user/assets/images/icons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="/user/assets/css/bootstrap.min.css">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="/user/assets/css/style.css">
    <style>
        * {
            color: black  !important;
            /*font-size: 16px !important;*/
        }

        .dauSao{
            color: red  !important;
            font-size: 25px  !important;
            margin-top: 100px  !important;
        }

        .center-content {
            text-align: center;       /* Căn giữa theo chiều ngang */
            vertical-align: middle;   /* Căn giữa theo chiều dọc */
        }
    </style>
</head>

<body>
<div class="page-wrapper">

    <main class="main">
        <div class="page-header text-center" style="background-image: url('/user/assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Tra thông tin<span>đơn hàng</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" onclick="quayLaiHome();">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page"><a href="#" onclick="quayLaiViewGioHang();">Giỏ hàng</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Tra thông tin đơn hàng</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
                <div class="container">
                    <div class="row">
                        <form class="col-lg-12" action="/gio-hang/view-traThongTinDonHang" method="get">
                            <div class="row d-fex justify-content-center">
                                <div class="col-lg-6">
                                    <input type="text" name="searchByMaHoaDon" placeholder="Vui lòng nhập mã hóa đơn tra cứu tại đây" class="col-lg-12" style="padding: 5px;" >
                                </div>
                                <div class="col-lg-3">
                                    <button class="btn btn-primary "  class="col-lg-3">Tìm kiếm</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
        </div>

        <div class="page-content">
            <div class="checkout">
                <div class="container">
<%--                    <div class="row">--%>
<%--                        <form action="/gio-hang/view-traThongTinDonHang" method="get">--%>
<%--                            <input type="text" name="searchByIdHoaDon" class="col-lg-9">--%>
<%--                            <button class="btn btn-primary "  class="col-lg-3">Tìm kiếm</button>--%>
<%--                        </form>--%>
<%--                    </div>--%>

                    <sf:form action="#" method="get" modelAttribute="hoaDonDetail">
                        <div class="row bg-white">
                            <div class="col-lg-5" style="margin-bottom: 20px;">
                                <div class="row ">
                                    <div class="col-lg-12 shadow p-3 mb-5 bg-white rounded ">
                                        <h3 class="summary-title mt-2">Thông tin đơn hàng</h3><!-- End .summary-title -->
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label>Mã hóa đơn </label>
                                                <sf:input path="ma" class="form-control"  readonly="true"  />
                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label>Họ và tên khách hàng </label>
                                                <sf:input path="tenKH" class="form-control"  readonly="true"  />
                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label>Địa chỉ nhận hàng</label>
                                                <sf:input path="diaChi" class="form-control"  readonly="true"  />
                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->

                                        <div class="row">
                                            <div class="col-sm-6">
                                                <label> Thành phố/Tỉnh </label>
                                                <sf:input path="tinh_thanhPho" class="form-control" id="tinh_thanhPho" readonly="true"  />
                                            </div><!-- End .col-sm-6 -->

                                            <div class="col-sm-6">
                                                <label>Quận/Huyện </label>
                                                <sf:input path="quan_huyen" class="form-control" id="quan_huyen" readonly="true"  />
                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->

                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label>Phường/Xã  </label>
                                                <sf:input path="phuong_xa" class="form-control" id="phuong_xa" readonly="true"  />
                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->

                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label>Trạng thái hóa đơn</label>
                                                <sf:select path="trangThai"  class="form-control" disabled="true">
                                                    <sf:option value="1">Chờ xác nhận</sf:option>
                                                    <sf:option value="2">Chờ lấy hàng</sf:option>
                                                    <sf:option value="3">Đang giao</sf:option>
                                                    <sf:option value="4">Đã giao hàng thành công</sf:option>
                                                    <sf:option value="5">Hủy</sf:option>
                                                </sf:select>
                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->

                                        <div class="accordion-summary" id="accordion-payment" style="margin-top: 20px;">
                                            <div class="card">
                                                <div class="card-header" id="heading-1">
                                                    <h2 class="card-title">Hình thức thanh toán: <br>
                                                        <sf:radiobutton path="hinhThucTT" disabled="true" value="3" name="hinhThucThanhToan" style="transform: scale(1.5); margin-top: 10px; color: blue; "/> <span style="margin-left: 10px; margin-bottom: 10px;">Thanh toán khi nhận hàng <br></span>
                                                        <sf:radiobutton path="hinhThucTT" disabled="true"  value="2" name="hinhThucThanhToan" style="transform: scale(1.5); margin-top: 10px; color: blue;"/> <span style="margin-left: 10px; margin-bottom: 10px;">Thanh toán bằng VNPay</span>
                                                    </h2>
                                                </div><!-- End .card-header -->
                                            </div><!-- End .card -->
                                        </div><!-- End .accordion -->
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label>Ngày đặt hàng </label>
                                                <sf:input  path="ngayMua" type="date"  class="form-control"  readonly="true"  />
                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label>Phí ship : </label>
<%--                                                <sf:input path="tienVanChuyen" class="form-control" readonly="true"  />--%>
                                                <b style="font-size: 16px;color:red !important;">
                                                    <fmt:formatNumber type = "number"
                                                                      maxFractionDigits = "0" value = "${hoaDonDetail.tienVanChuyen}" />
                                                </b>

                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label>Tổng tiền thanh toán: </label>
<%--                                                <sf:input path="tongTienThanhToan" class="form-control"  readonly="true"  />--%>
                                                <b style="font-size: 16px;color:red !important;">
                                                    <fmt:formatNumber type = "number"
                                                                      maxFractionDigits = "0" value = "${hoaDonDetail.tongTienThanhToan}" />
                                                </b>

                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->

                                        <div class="row d-flex justify-content-end" >
                                            <a href="/gio-hang/view-trangChu2" class="btn btn-primary" role="button" style="margin-right: 30px; margin-bottom: 20px;">
                                                Quay về trang chủ
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End .col-lg-9 -->
                            <aside class="col-lg-6 ml-4 " style="background-color: white !important;">
                                <div class="row" >
                                    <div class="col-lg-12 shadow p-3 mb-5 bg-white rounded ml-4">
                                        <h3 class="summary-title mt-2">Sản phẩm bạn chọn mua</h3><!-- End .summary-title -->

                                        <table class="table table-hover bg-white">
                                            <thead>
                                            <tr>
                                                <th class="center-content">Ảnh</th>
                                                <th class="center-content">Tên giày</th>
                                                <th class="center-content">Số lượng</th>
                                                <th class="center-content">Size - màu</th>
                                                <th class="center-content">Giá bán</th>
                                                <th class="center-content">Thành tiền</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${danhSach_sanPhamTrongHoaDonCT}" var="hoaDonChiTiet">
                                                <tr >
                                                    <td class="center-content">
                                                        <img height="100px" width="100px" src="${hoaDonChiTiet.chiTietSanPham.hinhAnh}" alt="">
                                                    </td>
                                                    <td class="center-content"><a href="#">${hoaDonChiTiet.chiTietSanPham.sanPham.ten}</a></td>
                                                    <td class="center-content">${hoaDonChiTiet.soLuong}</td>
                                                    <td class="center-content">Size : ${hoaDonChiTiet.chiTietSanPham.kichCo.ten} -
                                                        <br> ${hoaDonChiTiet.chiTietSanPham.mauSac.ten}</td>
                                                    <td class="center-content">
                                                        <script>
                                                            var giaTriSanPham = ${hoaDonChiTiet.giaGocSP};
                                                            var giaTriGiam = ${hoaDonChiTiet.giaSauGiam >= 0 ? hoaDonChiTiet.giaSauGiam : 0};

                                                            var formatted_giaGiam = new Intl.NumberFormat('vi-VN', { maximumFractionDigits: 0 }).format(giaTriGiam);
                                                            var formatted_giaGoc = new Intl.NumberFormat('vi-VN', { maximumFractionDigits: 0 }).format(giaTriSanPham);

                                                            if (giaTriGiam > 0) {
                                                                document.write("<del>" + formatted_giaGoc + "</del>  - <br> <b>" + formatted_giaGiam + "</b>");
                                                            } else {
                                                                document.write(formatted_giaGoc);
                                                            }
                                                        </script>
                                                    </td>
                                                    <td class="center-content">
                                                        <fmt:formatNumber type = "number"
                                                                          maxFractionDigits = "0" value = "${hoaDonChiTiet.donGia}" />
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                            </tbody>
                                        </table><!-- End .table table-summary -->
                                    </div>
                                </div><!-- End .summary -->
                            </aside><!-- End .col-lg-3 -->

                        </div><!-- End .row -->
                    </sf:form>
                </div><!-- End .container -->
            </div><!-- End .checkout -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->




</div><!-- End .page-wrapper -->
<button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

<!-- Mobile Menu -->
<div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

<div class="mobile-menu-container">
    <div class="mobile-menu-wrapper">
        <span class="mobile-menu-close"><i class="icon-close"></i></span>

        <form action="#" method="get" class="mobile-search">
            <label for="mobile-search" class="sr-only">Search</label>
            <input type="search" class="form-control" name="mobile-search" id="mobile-search" placeholder="Search in..." required>
            <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
        </form>

        <nav class="mobile-nav">
            <ul class="mobile-menu">
                <li class="active">
                    <a href="index.html">Home</a>

                    <ul>
                        <li><a href="index-1.html">01 - furniture store</a></li>
                        <li><a href="index-2.html">02 - furniture store</a></li>
                        <li><a href="index-3.html">03 - electronic store</a></li>
                        <li><a href="index-4.html">04 - electronic store</a></li>
                        <li><a href="index-5.html">05 - fashion store</a></li>
                        <li><a href="index-6.html">06 - fashion store</a></li>
                        <li><a href="index-7.html">07 - fashion store</a></li>
                        <li><a href="index-8.html">08 - fashion store</a></li>
                        <li><a href="index-9.html">09 - fashion store</a></li>
                        <li><a href="index-10.html">10 - shoes store</a></li>
                        <li><a href="index-11.html">11 - furniture simple store</a></li>
                        <li><a href="index-12.html">12 - fashion simple store</a></li>
                        <li><a href="index-13.html">13 - market</a></li>
                        <li><a href="index-14.html">14 - market fullwidth</a></li>
                        <li><a href="index-15.html">15 - lookbook 1</a></li>
                        <li><a href="index-16.html">16 - lookbook 2</a></li>
                        <li><a href="index-17.html">17 - fashion store</a></li>
                        <li><a href="index-18.html">18 - fashion store (with sidebar)</a></li>
                        <li><a href="index-19.html">19 - games store</a></li>
                        <li><a href="index-20.html">20 - book store</a></li>
                        <li><a href="index-21.html">21 - sport store</a></li>
                        <li><a href="index-22.html">22 - tools store</a></li>
                        <li><a href="index-23.html">23 - fashion left navigation store</a></li>
                        <li><a href="index-24.html">24 - extreme sport store</a></li>
                    </ul>
                </li>
                <li>
                    <a href="category.html">Shop</a>
                    <ul>
                        <li><a href="category-list.html">Shop List</a></li>
                        <li><a href="category-2cols.html">Shop Grid 2 Columns</a></li>
                        <li><a href="category.html">Shop Grid 3 Columns</a></li>
                        <li><a href="category-4cols.html">Shop Grid 4 Columns</a></li>
                        <li><a href="category-boxed.html"><span>Shop Boxed No Sidebar<span class="tip tip-hot">Hot</span></span></a></li>
                        <li><a href="category-fullwidth.html">Shop Fullwidth No Sidebar</a></li>
                        <li><a href="product-category-boxed.html">Product Category Boxed</a></li>
                        <li><a href="product-category-fullwidth.html"><span>Product Category Fullwidth<span class="tip tip-new">New</span></span></a></li>
                        <li><a href="cart.html">Cart</a></li>
                        <li><a href="checkout.html">Checkout</a></li>
                        <li><a href="wishlist.html">Wishlist</a></li>
                        <li><a href="#">Lookbook</a></li>
                    </ul>
                </li>
                <li>
                    <a href="product.html" class="sf-with-ul">Product</a>
                    <ul>
                        <li><a href="product.html">Default</a></li>
                        <li><a href="product-centered.html">Centered</a></li>
                        <li><a href="product-extended.html"><span>Extended Info<span class="tip tip-new">New</span></span></a></li>
                        <li><a href="product-gallery.html">Gallery</a></li>
                        <li><a href="product-sticky.html">Sticky Info</a></li>
                        <li><a href="product-sidebar.html">Boxed With Sidebar</a></li>
                        <li><a href="product-fullwidth.html">Full Width</a></li>
                        <li><a href="product-masonry.html">Masonry Sticky Info</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Pages</a>
                    <ul>
                        <li>
                            <a href="about.html">About</a>

                            <ul>
                                <li><a href="about.html">About 01</a></li>
                                <li><a href="about-2.html">About 02</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="contact.html">Contact</a>

                            <ul>
                                <li><a href="contact.html">Contact 01</a></li>
                                <li><a href="contact-2.html">Contact 02</a></li>
                            </ul>
                        </li>
                        <li><a href="login.html">Login</a></li>
                        <li><a href="faq.html">FAQs</a></li>
                        <li><a href="404.html">Error 404</a></li>
                        <li><a href="coming-soon.html">Coming Soon</a></li>
                    </ul>
                </li>
                <li>
                    <a href="blog.html">Blog</a>

                    <ul>
                        <li><a href="blog.html">Classic</a></li>
                        <li><a href="blog-listing.html">Listing</a></li>
                        <li>
                            <a href="#">Grid</a>
                            <ul>
                                <li><a href="blog-grid-2cols.html">Grid 2 columns</a></li>
                                <li><a href="blog-grid-3cols.html">Grid 3 columns</a></li>
                                <li><a href="blog-grid-4cols.html">Grid 4 columns</a></li>
                                <li><a href="blog-grid-sidebar.html">Grid sidebar</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Masonry</a>
                            <ul>
                                <li><a href="blog-masonry-2cols.html">Masonry 2 columns</a></li>
                                <li><a href="blog-masonry-3cols.html">Masonry 3 columns</a></li>
                                <li><a href="blog-masonry-4cols.html">Masonry 4 columns</a></li>
                                <li><a href="blog-masonry-sidebar.html">Masonry sidebar</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Mask</a>
                            <ul>
                                <li><a href="blog-mask-grid.html">Blog mask grid</a></li>
                                <li><a href="blog-mask-masonry.html">Blog mask masonry</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Single Post</a>
                            <ul>
                                <li><a href="single.html">Default with sidebar</a></li>
                                <li><a href="single-fullwidth.html">Fullwidth no sidebar</a></li>
                                <li><a href="single-fullwidth-sidebar.html">Fullwidth with sidebar</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="elements-list.html">Elements</a>
                    <ul>
                        <li><a href="elements-products.html">Products</a></li>
                        <li><a href="elements-typography.html">Typography</a></li>
                        <li><a href="elements-titles.html">Titles</a></li>
                        <li><a href="elements-banners.html">Banners</a></li>
                        <li><a href="elements-product-category.html">Product Category</a></li>
                        <li><a href="elements-video-banners.html">Video Banners</a></li>
                        <li><a href="elements-buttons.html">Buttons</a></li>
                        <li><a href="elements-accordions.html">Accordions</a></li>
                        <li><a href="elements-tabs.html">Tabs</a></li>
                        <li><a href="elements-testimonials.html">Testimonials</a></li>
                        <li><a href="elements-blog-posts.html">Blog Posts</a></li>
                        <li><a href="elements-portfolio.html">Portfolio</a></li>
                        <li><a href="elements-cta.html">Call to Action</a></li>
                        <li><a href="elements-icon-boxes.html">Icon Boxes</a></li>
                    </ul>
                </li>
            </ul>
        </nav><!-- End .mobile-nav -->

        <div class="social-icons">
            <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
        </div><!-- End .social-icons -->
    </div><!-- End .mobile-menu-wrapper -->
</div><!-- End .mobile-menu-container -->

<!-- Sign in / Register Modal -->
<div class="modal fade" id="signin-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="icon-close"></i></span>
                </button>

                <div class="form-box">
                    <div class="form-tab">
                        <ul class="nav nav-pills nav-fill" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Sign In</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab" aria-controls="register" aria-selected="false">Register</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="tab-content-5">
                            <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                <form action="#">
                                    <div class="form-group">
                                        <label for="singin-email">Username or email address *</label>
                                        <input type="text" class="form-control" id="singin-email" name="singin-email" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="singin-password">Password *</label>
                                        <input type="password" class="form-control" id="singin-password" name="singin-password" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>LOG IN</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="signin-remember">
                                            <label class="custom-control-label" for="signin-remember">Remember Me</label>
                                        </div><!-- End .custom-checkbox -->

                                        <a href="#" class="forgot-link">Forgot Your Password?</a>
                                    </div><!-- End .form-footer -->
                                </form>
                                <div class="form-choice">
                                    <p class="text-center">or sign in with</p>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-g">
                                                <i class="icon-google"></i>
                                                Login With Google
                                            </a>
                                        </div><!-- End .col-6 -->
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-f">
                                                <i class="icon-facebook-f"></i>
                                                Login With Facebook
                                            </a>
                                        </div><!-- End .col-6 -->
                                    </div><!-- End .row -->
                                </div><!-- End .form-choice -->
                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                <form action="#">
                                    <div class="form-group">
                                        <label for="register-email">Your email address *</label>
                                        <input type="email" class="form-control" id="register-email" name="register-email" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="register-password">Password *</label>
                                        <input type="password" class="form-control" id="register-password" name="register-password" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>SIGN UP</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="register-policy" required>
                                            <label class="custom-control-label" for="register-policy">I agree to the <a href="#">privacy policy</a> *</label>
                                        </div><!-- End .custom-checkbox -->
                                    </div><!-- End .form-footer -->
                                </form>
                                <div class="form-choice">
                                    <p class="text-center">or sign in with</p>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-g">
                                                <i class="icon-google"></i>
                                                Login With Google
                                            </a>
                                        </div><!-- End .col-6 -->
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login  btn-f">
                                                <i class="icon-facebook-f"></i>
                                                Login With Facebook
                                            </a>
                                        </div><!-- End .col-6 -->
                                    </div><!-- End .row -->
                                </div><!-- End .form-choice -->
                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .form-tab -->
                </div><!-- End .form-box -->
            </div><!-- End .modal-body -->
        </div><!-- End .modal-content -->
    </div><!-- End .modal-dialog -->
</div><!-- End .modal -->

<!-- Plugins JS File -->
<script src="/user/assets/js/jquery.min.js"></script>
<script src="/user/assets/js/bootstrap.bundle.min.js"></script>
<script src="/user/assets/js/jquery.hoverIntent.min.js"></script>
<script src="/user/assets/js/jquery.waypoints.min.js"></script>
<script src="/user/assets/js/superfish.min.js"></script>
<script src="/user/assets/js/owl.carousel.min.js"></script>
<!-- Main JS File -->
<script src="/user/assets/js/main.js"></script>

<!-- import jquery, axios, file js - to call API adress -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.26.1/axios.min.js" integrity="sha512-bPh3uwgU5qEMipS/VOmRqynnMXGGSRv+72H/N260MQeXZIK4PG48401Bsby9Nq5P5fz7hy5UGNmC/W1Z51h2GQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/user/js/callAPI_toFill_address.js"></script>

<script>

    quayLaiHome = function() {
        console.log("Xóa các sản phẩm trong cart thanh toán, quay lại trang chủ");

        //$ === jQuery
        jQuery.ajax({
            url : "/gio-hang/delete-product-in-cart",
            type : "GET",
            contentType: "application/json",
            data : JSON.stringify(),
            dataType : "json",

            success : function(jsonResult) {

                window.location.href = "/gio-hang/view-trangChu2";
            },

            error : function(jqXhr, textStatus, errorMessage) {
                //alert(jsonResult.code + ': Luu thanh cong...!')
            }

        });
    }

    quayLaiViewGioHang = function() {
        console.log("Xóa các sản phẩm trong cart thanh toán, quay lại trang xem giỏ hàng");

        //$ === jQuery
        jQuery.ajax({
            url : "/gio-hang/delete-product-in-cart",
            type : "GET",
            contentType: "application/json",
            data : JSON.stringify(),
            dataType : "json",

            success : function(jsonResult) {

                window.location.href = "/gio-hang/view-gio";
            },

            error : function(jqXhr, textStatus, errorMessage) {
                //alert(jsonResult.code + ': Luu thanh cong...!')
            }

        });
    }

</script>
</body>


<!-- molla/checkout.html  22 Nov 2019 09:55:06 GMT -->
</html>