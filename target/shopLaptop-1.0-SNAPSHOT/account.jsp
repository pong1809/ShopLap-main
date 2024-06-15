<%-- 
    Document   : account
    Created on : May 7, 2022, 7:58:45 AM
    Author     : LeeJaeLee
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PLap</title>
        <link rel="stylesheet" href="css/style_1.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    </head>
    <body>
        <!--header-->
        <jsp:include page="headerShop.jsp"></jsp:include>
        <!-- header end -->
        <jsp:include page="menubar.jsp"></jsp:include>
        
        <div class="container">
            <div class="row">
                <h1>Lịch sử mua hàng</h1>
            </div>
        </div>
        
        <div class="donhang">
            <div class="container">
            <c:forEach items="${info_cart}" var='o'>
                <div class="row">
                    <div class="col-md-6 tenDH">
                        Đơn hàng của ${o.hoten}
                    </div>
                    <div class="col-md-4 giaDH">
                        ${o.resAll}đ
                    </div>
                    <div class="col-md-2 btn-detail">
                        <button class="btn-ct"><a href="ShowAccountController?ida=${o.ida}">Chi tiết</a></button>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
        <div class="chitietDH">
            <div class="container">
                <div class="row head-account1">
                    <div class="col-md-1">
                        STT
                    </div>
                    <div class="col-md-5">
                        Tên sản phẩm
                    </div>
                    <div class="col-md-2">
                        Giá
                    </div>
                    <div class="col-md-2">
                        Số lượng
                    </div>
                    <div class="col-md-2">
                        Tổng
                    </div>
                </div>
            <c:forEach items="${list_cart}" var='o'>
                <div class="row table-account">
                    <div class="col-md-1">
                        <div class="stt-account">
                            ${o.stt}
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="img-account">
                            <img src="${o.image}" alt="">
                            <strong>${o.pname}</strong>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="gia-account">
                            ${o.giaChu}đ
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="qty-account">
                            ${o.amount}
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="tong-account">
                            ${o.total}đ
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/app.js"></script>
    </body>
</html>
