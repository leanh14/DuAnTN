<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!doctype html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Quản lý sản phẩm - N </title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="/admin/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="/admin/assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <style>
        .messageError{
            color: red;
        }
    </style>
</head>
<body>
<!-- Left Panel -->
<aside id="left-panel" class="left-panel ">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <%--                <li class="">--%>
                <%--                    <a href="dashboard_2.html">--%>
                <%--                        <i class="menu-icon fa fa-laptop"></i>Dashboard--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <li class="menu-title">Quản lý hóa đơn</li>
                <!-- /.menu-title -->
                <%--                <li class="menu-item-has-children dropdown ">--%>
                <%--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--                        <i class="menu-icon fa fa-cogs"></i>Quản lý thuộc tính--%>
                <%--                    </a>--%>
                <%--                    <ul class="sub-menu children dropdown-menu">--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-puzzle-piece"></i>--%>
                <%--                            <a href="/san-pham/hien-thi">Sản phẩm</a>--%>
                <%--                        </li>--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-gear"></i>--%>
                <%--                            <a href="/chat-lieu/hien-thi">Chất liệu</a>--%>
                <%--                        </li>--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-eraser"></i>--%>
                <%--                            <a href="/mau-sac/hien-thi">Màu sắc</a>--%>
                <%--                        </li>--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-id-badge"></i>--%>
                <%--                            <a href="/thuong-hieu/hien-thi">Thương hiệu</a>--%>
                <%--                        </li>--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-arrows-h"></i>--%>
                <%--                            <a href="/kich-thuoc/hien-thi">Kích cỡ</a>--%>
                <%--                        </li>--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-inbox"></i>--%>
                <%--                            <a href="/kieu-dang/hien-thi">Kiểu dáng</a>--%>
                <%--                        </li>--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-suitcase"></i>--%>
                <%--                            <a href="/nha-sx/hien-thi">NSX</a>--%>
                <%--                        </li>--%>
                <%--                    </ul>--%>

                <%--                </li>--%>
                <li>
                    <a href="/hoa-don/hien-thi" aria-expanded="false">
                        <i class="menu-icon fa fa-print"></i>Quản lý hóa đơn
                    </a>
                    <li class="active">
                        <a href="/admin/quanLySanPham/hien-thi" aria-expanded="false" >
                            <i class="menu-icon fa fa-star"></i>Quản lý sản phẩm
                        </a>
                    </li>

                </li>
                <%--                <li class="">--%>
                <%--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--                        <i class="menu-icon fa fa-leaf"></i>Quản lý khuyến mãi--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-leaf" ></i>Quản lý khuyến mãi</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="fa fa-puzzle-piece"></i><a href="/dot-khuyen-mai/hien-thi">Đợt khuyến mãi</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="/phieu-giam-gia/hien-thi">Phiếu giảm giá</a></li>
                    </ul>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-puzzle-piece"></i>Quản lý thuộc tính
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li class="">
                            <a href="/thuong-hieu/hien-thi">
                                <i class="fa fa-id-badge"></i> Thương hiệu
                            </a>
                        </li>
                        <li class="">
                            <a href="/nha-sx/hien-thi">
                                <i class="fa fa-suitcase"></i> Nhà sản xuất
                            </a>
                        </li>
                        <li class="">
                            <a href="/danh-muc/hien-thi">
                                <i class="fa fa-building-o"></i> Danh mục
                            </a>
                        </li>
                        <li class="">
                            <a href="/loai-sp/hien-thi">
                                <i class="fa fa-sun-o"></i> Loại sản phẩm
                            </a>
                        </li>
                        <li class="">
                            <a href="/kieu-dang/hien-thi">
                                <i class="fa fa-inbox"></i> Kiểu dáng
                            </a>
                        </li>
                        <li class="">
                            <a href="/chat-lieu/hien-thi">
                                <i class="fa  fa-beer"></i> Chất liệu
                            </a>
                        </li>
                        <li class="">
                            <a href="/mui-giay/hien-thi">
                                <i class="fa fa-cog"></i> Mũi giày
                            </a>
                        </li>
                        <li class="">
                            <a href="/day-giay/hien-thi">
                                <i class="fa fa-bars"></i> Dây giày
                            </a>
                        </li>
                        <li class="">
                            <a href="/de-giay/hien-thi">
                                <i class="fa fa-sort-desc"></i> Đế giày
                            </a>
                        </li>
                        <li class="">
                            <a href="/lot-giay/hien-thi">
                                <i class="fa  fa-road "></i> Lót giày
                            </a>
                        </li>
                        <li class="">
                            <a href="/mau-sac/hien-thi">
                                <i class="fa fa-eraser"></i> Màu sắc
                            </a>
                        </li>
                        <li class="">
                            <a href="/kich-thuoc/hien-thi">
                                <i class="fa fa-arrows-h"></i> Size giày
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-title ">Thống kê</li>
                <!-- /.menu-title -->
                <li >
                    <a href="/thong-ke" aria-expanded="false"> <i class="menu-icon fa fa-bar-chart-o"></i>Thống kê doanh thu</a>
                </li>
                <%--                <li class="menu-item-has-children dropdown">--%>
                <%--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                <%--                        <i class="menu-icon fa fa-bar-chart-o"></i>Thống kê doanh thu--%>
                <%--                    </a>--%>
                <%--                    <ul class="sub-menu children dropdown-menu">--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-puzzle-piece"></i>--%>
                <%--                            <a href="ui-buttons.html">Hàng ngày</a>--%>
                <%--                        </li>--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-id-badge"></i>--%>
                <%--                            <a href="ui-badges.html">Hàng tháng</a>--%>
                <%--                        </li>--%>
                <%--                        <li>--%>
                <%--                            <i class="fa fa-bars"></i>--%>
                <%--                            <a href="ui-tabs.html">Hàng năm</a>--%>
                <%--                        </li>--%>
                <%--                    </ul>--%>
                <%--                </li>--%>
                <li class="menu-title">Bán hàng</li>
                <!-- /.menu-title -->
                <li >
                    <a href="/ban-hang/view">
                        <i class="menu-icon fa fa-file-text-o"></i>Bán hàng tại quầy
                    </a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
</aside>


<!-- /Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <jsp:include page="/WEB-INF/view/admin/layout/header_admin.jsp"></jsp:include>
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="breadcrumbs-inner">
            <div class="row m-0">
<%--                <div class="col-sm-4">--%>
<%--                    <div class="page-header float-left">--%>
<%--                        <div class="page-title">--%>
<%--                            <h1>Dashboard</h1>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-sm-8">--%>
<%--                    <div class="page-header float-right">--%>
<%--                        <div class="page-title">--%>
<%--                            <ol class="breadcrumb text-right">--%>
<%--                                <li><a href="#">Dashboard</a></li>--%>
<%--                                <li><a href="#">Quản lý giày</a></li>--%>
<%--                                <li class="active">Giày</li>--%>
<%--                            </ol>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
        </div>
    </div>


    <div class="content" style="margin-top: 0px;">
        <div class="animated fadeIn">
            <div class="card col-lg-12">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-9">
                            <strong class="card-title" ><h3>Danh sách sản phẩm</h3></strong>
                        </div>
                        <div class="col-lg-3 justify-content-end" >
                            <a href="/admin/quanLySanPham/view-tao-sanPhamChiTiet" class="btn btn-primary"> <i class="menu-icon fa fa-plus"></i> Thêm mới sản phẩm</a>
                        </div>
                    </div>

                    <br>
                    <form action="/admin/quanLySanPham/hien-thi" method="GET">
                        <div class="row " style=" margin-left: 0px;">
                            <div class="col-lg-10">
                                <input  class="form-control " id="searchTenSP" name="searchTenSP" type="text" placeholder="Nhập tên sản phẩm cần tìm kiếm" >
                            </div>
                            <div class="col-lg-2 justify-content-end" >
                                <button class="btn btn-secondary" type="submit" >
                                    <i class="menu-icon fa fa-search"></i> Tìm kiếm</button>
                            </div>
                            <div class="col-lg-12 justify-content-end" style="margin-top: 20px;">
                                <span>Trạng thái:</span>
                                <div style="margin-top: 5px; display: inline-block; margin-left: 10px;" >
                                    <input type="radio" name="searchTrangThaiSP" value="" checked/>  <span style="margin-right: 15px;" > Tất cả </span>
                                    <input type="radio" name="searchTrangThaiSP" value="0" />  <span style="margin-right: 15px;" > Ngưng hoạt động</span>
                                    <input type="radio" name="searchTrangThaiSP" value="1" /> <span style="margin-right: 15px;" > Hoạt động</span>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <form action="/san-pham/xoaTheoLuaChon" method="get">
                            <table class="table table-bordered table-hover no-wrap">
                                <thead>
                                <tr style="text-align: center;">
                                    <%--                                    <th scope="col">Lựa chọn</th>--%>
                                    <th scope="col">STT</th>
                                    <th scope="col">Tên giày</th>
                                    <th scope="col">Số lượng</th>
                                    <th scope="col">Trạng thái</th>
                                    <th scope="col" colspan="2" >Thao tác</th>
                                </tr>
                                </thead>
                                <tbody id="danhSachSanPhamChiTiet">
                                    <c:forEach items="${dsSanPham}" var="sanPhamSearch" varStatus="sanPham">
                                        <tr>
                                            <td>${sanPham.index +1}</td>
                                            <td>${sanPhamSearch.getTenSanPham()}</td>
                                            <td>${sanPhamSearch.getTongSoLuongSP()}</td>
                                            <td>${sanPhamSearch.getTrangThaiSP()==0?'Ngưng hoạt động':'Hoạt động'}</td>
                                            <td > <a href="/admin/quanLySanPham/viewSanPhamChiTiet/${sanPhamSearch.getIdSanPham()}" class="btn btn-success"><i class="menu-icon fa fa-eye"></i> Chi tiết</a> </td>
                                            <td > <a href="/san-pham/view-sua/${sanPhamSearch.getIdSanPham()}" class="btn btn-info"><i class="menu-icon fa fa-pencil-square-o"></i> Sửa</a> </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                         </form>
                    </div>
                </div>
            </div>
        </div><!-- .animated -->
    </div><!-- .content -->


    <div class="clearfix"></div>

    <!-- footer -->
    <jsp:include page="/WEB-INF/view/admin/layout/footer.jsp"></jsp:include>
    <!--/ footer -->




</div><!-- /#right-panel -->

<!-- Right Panel -->

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="/admin/assets/js/main.js"></script>

<script>
    // document.addEventListener("DOMContentLoaded", function() {
    //     fetchDataTo_tableDanhSachSanPham();
    // })
    // Sử dụng JavaScript để đặt giá trị của trường ngày thành ngày hôm nay
    // document.getElementById('dateToday').valueAsDate = new Date();

    function fetchDataTo_tableDanhSachSanPham() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachSanPhamCT_TheoSoLuong",
            type: "GET",
            success: function(data) {
                console.log("Danh sách chi tiết sản phẩm: " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var productList = data;

                var tableBody = $("#danhSachSanPhamChiTiet");
                tableBody.empty();

                // set lại nội dung cho tbody
                data.forEach(function(item, index) {
                    var trangThai = item.trangThai ===1 ? 'Hoạt động' : 'Ngưng hoạt động';

                    var row =
                        "<tr style='text-align: center;'>" +
                        "<td>" + (index + 1) + "</td>" +
                        "<td>" + item.tenSanPham + "</td>" +
                        "<td>" + item.tongSoLuong + "</td>" +
                        "<td>" + trangThai + "</td>" +
                        "<td><a href='/admin/quanLySanPham/viewSanPhamChiTiet/" + item.idSanPham + "' class='btn btn-success'><i class='menu-icon fa fa-eye'></i> Chi tiết</a></td>" +
                        "<td><a href='/san-pham/view-sua/" + item.idSanPham + "' class='btn btn-info'><i class='menu-icon fa fa-pencil-square-o'></i> Sửa</a></td>" +
                        "</tr>";
                    tableBody.append(row);
                });
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }



</script>

</body>
</html>

