<%-- 
    Document   : detail
    Created on : Apr 28, 2022, 10:29:23 PM
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
    </head>
    <body>
        <!--header-->
        <jsp:include page="headerShop.jsp"></jsp:include>
        <!-- header end -->
        <!--logo-->
        <jsp:include page="logo_cart.jsp"></jsp:include>

        <!-- Menu Bar -->
        <jsp:include page="menubar.jsp"></jsp:include>
        
        <div class="pname">
            <div class="container">
                <div class="row">
                    <h3>${p.pname}</h3>
                </div>
            </div>
        </div>

        <div class="detail">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="imageP">
                            <img src="${p.image}" alt="">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="tittle-description">
                            <div class="price">
                                <c:choose>
                                    <c:when test="${p.isDiscount == 0}">
                                        <h4>Giá: ${p.priceChu}đ</h4>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="dacdiem">
                                            <h4>Giá: ${p.giamconChu}đ</h4>
                                            <h4 class="gachngang1">${p.priceChu}đ</h4>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                                <p><strong>Bảo hành:</strong> 12 tháng</p>
                                <c:choose>
                                    <c:when test="${p.slc < 1}">
                                        <p><strong>Tình trạng:</strong> Hết hàng</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p><strong>Tình trạng:</strong> Còn hàng</p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="title-des">
                                <div class="tit">${p.tittle}</div>
                                <div class="des">
                                    <strong>Mô tả chi tiết:</strong>
                                    <p>
                                        ${p.description}
                                    </p>
                                </div>
                            </div>
                        <c:if test="${p.slc > 0}">
                            <div class="btn-add">
                                <button><a href="CartController?pid=${p.pid}">Mua hàng</a></button>
                            </div>
                        </c:if>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thongso">
                            <c:if test="${p.isCate == 1}">
                                <div class="hang">
                                    <div>Tên máy</div>
                                    <div>${infoLap.tenmay}</div>
                                </div>
                                <div class="hang">
                                    <div>Ổ cứng</div>
                                    <div>${infoLap.ocung}</div>
                                </div>
                                <div class="hang">
                                    <div>CPU</div>
                                    <div>${infoLap.cpu}</div>
                                </div>
                                <div class="hang">
                                    <div>RAM</div>
                                    <div>${infoLap.ram}</div>
                                </div>
                                <div class="hang">
                                    <div>Card</div>
                                    <div>${infoLap.cardDH}</div>
                                </div>
                                <div class="hang">
                                    <div>Màn hình</div>
                                    <div>${infoLap.manhinh}</div>
                                </div>
                                <div class="hang">
                                    <div>Trọng lượng</div>
                                    <div>${infoLap.trongluong}</div>
                                </div>
                                <div class="hang">
                                    <div>Hệ điều hành</div>
                                    <div>${infoLap.hdh}</div>
                                </div>
                            </c:if>
                            <c:if test="${p.isCate == 0}">
                                <div class="hang">
                                    <div>Xuất xứ</div>
                                    <div>${infoPK.xuatxu}</div>
                                </div>
                                <div class="hang">
                                    <div>Tên phụ kiện</div>
                                    <div>${infoPK.tenpk}</div>
                                </div>
                                <div class="hang">
                                    <div>Loại</div>
                                    <div>${infoPK.loai}</div>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="tmp2"><h1>Các sản phẩm khác</h1></div>
        </div>

        <div class="product-index">
            <div class="container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <c:if test="${p.isCate == 1}">
                            <c:forEach items="${list}" var='o'>
                                <div class="swiper-slide col-md-3">
                                    <div class="productP">
                                        <div class="imageP">
                                            <img src="${o.image}" alt="">
                                        </div>
                                        <div class="infoP">
                                            <h4><a href="DetailController?pid=${o.pid}">${o.pname}</a></h4>
                                            <p>Giá: ${o.priceChu}đ</p>
                                        </div>
                                        <c:if test="${o.slc > 0}">
                                            <button class="btnP"><a href="CartController?pid=${o.pid}">Add to cart</a></button>
                                        </c:if>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                        <c:if test="${p.isCate == 0}">
                            <c:forEach items="${list1}" var='o'>
                                <div class="swiper-slide col-md-3">
                                    <div class="productP">
                                        <div class="imageP">
                                            <img src="${o.image}" alt="">
                                        </div>
                                        <div class="infoP">
                                            <h4><a href="DetailController?pid=${o.pid}">${o.pname}</a></h4>
                                            <p>Giá: ${o.priceChu}đ</p>
                                        </div>
                                        <c:if test="${o.slc > 0}">
                                            <button class="btnP"><a href="CartController?pid=${o.pid}">Add to cart</a></button>
                                        </c:if>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
            
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>
