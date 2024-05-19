<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!doctype html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Quản lý phiếu giảm giá </title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="/admin/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="/admin/assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <style>
        .messageError {
            color: red;
        }
    </style>
</head>
<body>
<!-- Left Panel -->
<jsp:include page="/WEB-INF/view/admin/layout/left_menu_admin.jsp"></jsp:include>
<!-- /Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <jsp:include page="/WEB-INF/view/admin/layout/header_admin.jsp"></jsp:include>
    <!-- Header-->

    <%--    <div class="breadcrumbs">--%>
    <%--        <div class="breadcrumbs-inner">--%>
    <%--            <div class="row m-0">--%>
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
    <%--                                <li class="active">màu sắc</li>--%>
    <%--                            </ol>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <div class="content">
        <div class="animated fadeIn">
            <div class="card col-lg-12">
                <div class="card-header">
                    <div>
                        <strong class="card-title"><h3>Thêm mới phiếu giảm giá</h3></strong>
                    </div>

                </div>
                <div class="card-body">
                    <sf:form action="/phieu-giam-gia/them" method="post" modelAttribute="phieuGiam" class="row">
                        <div class="col-lg-6">
                            <span>Mã (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input path="ma" type="text" style="margin-top: 5px;" class="form-control"/>
                            <sf:errors path="ma" cssClass="text-danger"/>
                            <c:if test="${trungMa==true}">
                                <p class="text-danger">Mã phiếu đã có trong hệ thống, vui lòng nhập mã mới</p>
                            </c:if>
                        </div>
                        <div class="col-lg-6">
                            <span>Tên phiếu(<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input path="tenPhieu" type="text" style="margin-top: 5px;"  class="form-control"/>
                            <sf:errors path="tenPhieu" cssClass="text-danger"/>
                            <c:if test="${trungTen==true}">
                                <p class="text-danger">Tên phiếu giảm giá đã có trong hệ thống, vui lòng nhập tên mới</p>
                            </c:if>
                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Giá trị giảm (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="giaTriGiam" path="giaTriGiam" style="margin-top: 5px;" type="number" class="form-control"  />
                            <sf:errors path="giaTriGiam" cssClass="text-danger"/>
                                <%--                            <div th:if =  th:errors="*{giaTriGiam}" class="invalid-feedback"></div>--%>

                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Số lượng (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="soLuong" path="soLuong" style="margin-top: 5px;" type="number" class="form-control"  />
                            <sf:errors path="soLuong" cssClass="text-danger"/>
                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Hình thức giảm (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="hinhThucGiam" path="hinhThucGiam" style="margin-top: 5px;"  class="form-control"  />
                            <sf:errors path="hinhThucGiam" cssClass="text-danger"/>
                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Giá tiền xét điều kiện (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="giaTienXetDieuKien" path="giaTienXetDieuKien" style="margin-top: 5px;" type="number" class="form-control"  />
                            <sf:errors path="giaTienXetDieuKien" cssClass="text-danger"/>
                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Ngày bắt đầu (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="ngayBatDauApDung" path="ngayBatDauApDung" style="margin-top: 5px;" type="date" class="form-control"/>
                            <sf:errors path="ngayBatDauApDung"  cssClass="text-danger"/>

                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Ngày kết thúc (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="ngayKetThucApDung" path="ngayKetThucApDung" style="margin-top: 5px;" type="date" class="form-control"/>
                            <sf:errors path="ngayKetThucApDung"  cssClass="text-danger"/>

                        </div>
                        <%--                        <div class="col-lg-6" style="margin-top: 20px;">--%>
                        <%--                            <span>Trạng thái (<i class="fa fa-asterisk" style="color: red;"></i>)</span>--%>
                        <%--                            <br>--%>
                        <%--                            <sf:radiobutton path="trangThai" value="1" checked="true"/> Hoạt động--%>
                        <%--                            <sf:radiobutton path="trangThai" value="0"/> Ngưng hoạt động--%>
                        <%--                            <sf:errors path="trangThai" cssClass="text-danger"/>--%>

                        <%--                        </div>--%>
                        <div class="col-lg-8" style="margin-top: 20px;">
                            <c:if test="${messageSuccess==true}">
                                <%--                                style="z-index: 9999; position: fixed; top: 10px; right: 10px; width: 350px;"--%>
                                <div id="messageAlertSuccess" class="alert alert-primary alert-dismissible "
                                     style="width: 300px;">

                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <i class="menu-icon fa fa-check"></i> Thêm mới dữ liệu thành công!
                                </div>

                                <script>
                                    // Lấy thẻ alert
                                    var alert = document.getElementById('messageAlertSuccess');

                                    // Ẩn thẻ alert sau 3 giây
                                    setTimeout(function () {
                                        alert.style.display = 'none';
                                    }, 3000); // 3000 milliseconds tương ứng với 3 giây
                                </script>
                            </c:if>
                        </div>
                        <div class="col-lg-4" style="margin-top: 20px; ">
                            <button class="btn btn-success"><i class="menu-icon fa fa-plus"></i> </a> Thêm mới</button>
                            <a href="/phieu-giam-gia/hien-thi" class="btn btn-secondary" style="margin-left: 10px;"> <i
                                    class="menu-icon fa fa-undo"></i> Quay lại</a>
                        </div>
                    </sf:form>
                </div>
            </div>
        </div><!-- .animated -->
    </div><!-- .content -->

    <div class="content" style="margin-top: -55px;">
        <div class="animated fadeIn">
            <div class="card col-lg-12">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-10">
                            <strong class="card-title"><h3>Danh sách phiếu giảm</h3></strong>
                        </div>
                    </div>
                    <br>
                    <form action="/phieu-giam-gia/hien-thi" method="get">
                        <div class="row d-flex" style=" margin-left: 3px;">
                            <input class="form-control col-lg-4" id="textsearch" name="textsearch" type="text"
                                   placeholder="(Tìm kiếm theo mã, tên)">
                            <span style="margin: 0px 5px;"></span>
                            <button class="btn btn-secondary" type="submit"><i class="menu-icon fa fa-search"></i>
                                Tìm kiếm
                            </button>
                        </div>
                    </form>

                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover no-wrap">
                            <thead>
                            <tr style="text-align: center;">
                                <%--                                <th scope="col">ID</th>--%>
                                <th scope="col">STT</th>
                                <th scope="col">Mã</th>
                                <th scope="col">Tên phiếu</th>
                                <th scope="col">Giá trị giảm</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Hình thức giảm</th>
                                <th scope="col">Giá tiền xét điều kiện</th>
                                <th scope="col">Ngày bắt đầu</th>
                                <th scope="col">Ngày kết thúc</th>
                                <th scope="col">Trạng thái</th>
                                <th scope="col" colspan="2">Tác động</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${listPG}" var="pg" varStatus="i">
                                <tr>
                                    <th scope="row">${i.index +1}</th>
                                    <td>${pg.ma}</td>
                                    <td>${pg.tenPhieu}</td>
                                        <%--                                    <td>${pg.giaTriGiam}</td>--%>
                                    <td><fmt:formatNumber value="${pg.giaTriGiam}" pattern="#,##0"/></td>
                                    <td>${pg.soLuong}</td>
                                    <td> ${pg.hinhThucGiam}</td>
                                        <%--                                    <td> ${pg.giaTienXetDieuKien}</td>--%>
                                    <td><fmt:formatNumber value=" ${pg.giaTienXetDieuKien}" pattern="#,##0"/></td>
                                    <td><fmt:formatDate value="${pg.ngayBatDauApDung}"
                                                        pattern="dd/MM/yyyy"/></td>
                                    <td><fmt:formatDate value="${pg.ngayKetThucApDung}"
                                                        pattern="dd/MM/yyyy"/></td>
                                    <td> ${pg.trangThai == 1 ? 'Hoạt động': 'Ngưng hoạt động'}</td>
                                    <td>  <a href="/phieu-giam-gia/detail/${pg.id}" class="btn btn-success">Xem <i class="menu-icon fa fa-pencil-square-o" ></i></a></td>

                                    <td>
                                        <a href="/phieu-giam-gia/delete/${pg.id}" class="btn btn-warning" onclick="return confirm('Bạn chắc chắn muốn xóa  ${pg.tenPhieu}?')">Xóa <i class="menu-icon fa fa-trash-o"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-lg-4">
                        </div>
                        <div class="col-lg-8" style="text-align: center;">
                            <nav aria-label="...">
                                <c:if test="${totalPage>0}">
                                    <ul class="pagination justify-content-end">
                                        <c:if test="${pageChoosedNumber > 0}">
                                            <li class="page-item">
                                                <a class="page-link" href="/phieu-giam-gia/hien-thi?${pageChoosedNumber-1}"
                                                   tabindex="-1" aria-disabled="true">Previous</a>
                                            </li>
                                        </c:if>

                                        <c:forEach begin="0" end="${totalPage - 1}" varStatus="loop">
                                            <c:choose>
                                                <c:when test="${pageChoosedNumber==loop.index}">
                                                    <li class="page-item active" aria-current="page">
                                                        <a name="page" class="page-link"
                                                           href="/phieu-giam-gia/hien-thi?page=${loop.index}">${loop.index + 1}</a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li class="page-item" aria-current="page">
                                                        <a name="page" class="page-link"
                                                           href="/phieu-giam-gia/hien-thi?page=${loop.index}">${loop.index + 1}</a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        <c:if test="${pageChoosedNumber < (totalPage-1)}">
                                            <li class="page-item">
                                                <a class="page-link"
                                                   href="/phieu-giam-gia/hien-thi?page=${pageChoosedNumber+1}">Next</a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </c:if>
                            </nav>
                        </div>
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

<%--<script>--%>
<%--    document.addEventListener('DOMContentLoaded', function() {--%>
<%--        document.querySelector('form').addEventListener('submit', function(event) {--%>
<%--            // Lấy ra các trường input ngày giờ--%>
<%--            const ngayBatDauInput = document.getElementById('ngayBatDauApDung');--%>
<%--            const ngayKetThucInput = document.getElementById('ngayKetThucApDung');--%>

<%--            // Kiểm tra xem trường ngày giờ có giá trị không rỗng--%>
<%--            if (ngayBatDauInput.value && ngayKetThucInput.value) {--%>
<%--                // Tạo đối tượng Date từ chuỗi đầu vào--%>
<%--                const ngayBatDauDate = new Date(ngayBatDauInput.value);--%>
<%--                const ngayKetThucDate = new Date(ngayKetThucInput.value);--%>

<%--                // Định dạng ngày giờ thành chuỗi dạng yyyy-MM-ddTHH:mm:ss--%>
<%--                ngayBatDauInput.value = formatDateToISOString(ngayBatDauDate);--%>
<%--                ngayKetThucInput.value = formatDateToISOString(ngayKetThucDate);--%>
<%--            }--%>
<%--        });--%>
<%--    });--%>

<%--    // Hàm để định dạng ngày giờ thành chuỗi dạng yyyy-MM-ddTHH:mm:ss--%>
<%--    function formatDateToISOString(date) {--%>
<%--        const year = date.getFullYear();--%>
<%--        const month = (date.getMonth() + 1).toString().padStart(2, '0');--%>
<%--        const day = date.getDate().toString().padStart(2, '0');--%>
<%--        const hours = date.getHours().toString().padStart(2, '0');--%>
<%--        const minutes = date.getMinutes().toString().padStart(2, '0');--%>
<%--        const seconds = date.getSeconds().toString().padStart(2, '0');--%>
<%--        return `${year}-${month}-${day}T${hours}:${minutes}:${seconds}`;--%>
<%--    }--%>

<%--</script>--%>
<script>
    // Sử dụng JavaScript để đặt giá trị của trường ngày thành ngày hôm nay
    document.getElementById('dateToday').valueAsDate = new Date();


    function myValidationFormBeforeAdd() {
        console.log("Chạy vào validation");
        let tenPhieu = document.getElementById("tenPhieu").value;
        let maPhieu = document.getElementById("maPhieu").value;
        let check = true;

        // kiểm tra mã chất liệu có được nhập không ?
        if (maPhieu === null || maPhieu.trim() === "") {
            document.getElementById("messagemaPhieu").innerHTML = "Vui lòng nhập mã";
            return false;
        } else {
            document.getElementById("messagemaPhieu").innerHTML = "";
        }

        // kiem tra size giay - rong, null, ko phai so, trung du lieu
        if (tenPhieu === null || tenPhieu.trim() === "") {
            document.getElementById("messagetenPhieu").innerHTML = "Vui lòng nhập tên phiếu";
            return false;
        } else {
            document.getElementById("messagetenPhieu").innerHTML = "";
        }

        alert("Dữ liệu bạn nhập hợp lệ, dữ liệu sẽ được cập nhật vào database");

        return check;
    }

</script>
</body>
</html>
