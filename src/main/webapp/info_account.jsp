<%-- 
    Document   : info_account
    Created on : May 10, 2022, 8:53:20 AM
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
        <!-- Menu Bar -->
        <jsp:include page="menubar.jsp"></jsp:include>
        
        <form action="SaveTransactionController" id="form-account1" method="post">
            <div class="container">
                <div class="row head-account">
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
                <c:forEach items="${list}" var='o'>
                    <div class="row table-account">
                        <div class="col-md-1">
                            <div class="stt-account">
                                ${o.stt}
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="img-account">
                                <img src="${o.image}" alt="">
                                <strong><a href="DetailController?${o.pid}">${o.pname}</a></strong>
                            </div>
                        </div>
                          
                        <div class="col-md-2">
                            <div class="gia-account">
                                ${o.giamconChu}đ
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="qty-account">
                                <input type="text" value="${o.amount}" name="amount" readonly>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="tong-account">
                                ${o.tongPChu}đ
                            </div>
                        </div>
                            <div class="col-md-2">
                            <div class="pid">
                                <input type="text" value="${o.pid}" name="pid" readonly style="display: none;">
                            </div>

                        </div> 
                    </div>
                </c:forEach>
                <div class="row total-account">
                    <div class="col-md-2">
                        Tổng cộng:
                    </div>
                    <div class="col-md-2">
                        <input type="text" value="${totalne}đ" class="res-total" name="res-total" readonly>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row ttkh">
                    <div class="col-md-6">
                        <div class="phan1">
                            <div>
                                <strong>1. Khách hàng khai báo thông tin</strong>
                            </div>
                            <div>
                                <label for="tk">Tài khoản:</label>
                                <input type="text" id="tk" name="tk" value="${username}" readonly>
                            </div>
                            <div>
                                <label for="ht">Họ tên:</label>
                                <input type="text" id="ht" name="ht" value="${hoten}" readonly>
                            </div>
                            <div>
                                <label for="dt">Điện thoại:</label>
                                <input type="text" id="dt" name="dt" value="${phone}" readonly>
                            </div>
                            <div>
                                <label for="dc">Địa chỉ:</label>
                                <input type="text" id="dc" name="dc" value="${diachi}" readonly>
                            </div>
                            <div>
                                <label for="email">Email:</label>
                                <input type="email" id="email" name="email" value="${email}" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="phan23">
                            <div class="phan2">
                                <div>
                                    <strong>2. Ghi chú cho đơn hàng</strong>
                                </div>
                                <div>
                                    <input type="text" name="ghichu" id="ghichu" value="${ghichu}" readonly>
                                </div>
                            </div>
                            <div class="phan3">
                                <strong>3. Phương thức thanh toán</strong>
                                <input type="text" name="thanhtoantainha" id="thanhtoantainha" value="Thanh toán bằng tiền mặt khi nhận hàng" readonly>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row chotdon1">
                    <button type="submit">Xác nhận</button>
                    <button type="button"><a href="HuyController?ida=${ida}">Hủy</a></button>
                </div>
            </div>
        </form>
    </body>
    
    <jsp:include page="footer.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/app.js"></script>
</html>
