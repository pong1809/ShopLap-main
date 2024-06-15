<%-- 
    Document   : cart
    Created on : Apr 28, 2022, 10:15:27 PM
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

        <c:if test="${sessionScope.list1 != null}">
            <c:forEach items="${sessionScope.list_tmp}" var='o'>
                <div class="container tbao">
                    <div class="alert alert-danger" role="alert">
                        Sản phẩm: ${o.pname} chỉ còn ${o.slc} chiếc
                    </div>
                </div>
            </c:forEach>
        </c:if>
        
        <c:if test="${sessionScope.ac == null}">
            <div class="container tbao">
                <div class="alert alert-danger" role="alert">
                    Tiến hành đăng nhập để mua hàng
                </div>
            </div>
        </c:if>
        
        <c:if test="${sessionScope.thongbao != null}">
            <div class="container tbao">
                <div class="alert alert-success" role="alert">
                    ${sessionScope.thongbao}
                </div>
            </div
        </c:if>>
        
        <form action="QuantityController" method="post">
            <div class="cart">
                <div class="container">
                    <div class="table">
                        <div class="head">
                            <div>STT</div>
                            <div>Tên sản phẩm</div>
                            <div>Giá</div>
                            <div>Số lượng</div>
                            <div>Tổng</div>
                            <div>Xóa</div>
                        </div>
                    <c:forEach items="${listCart}" var="o">
                        <div class="about">
                            <div class="tt">${o.stt}</div>
                            <div class="ten">
                                <div><img src="${o.image}" alt=""></div>
                                <div><a href="DetailController?pid=${o.pid}"><p>${o.pname}</p></a></div>
                            </div>
                            <div class="gia">
                                <span class="gia1">${o.giamconChu}đ</span>
                            </div>
                            <div class="sl">
                                <span class="tru">-</span>
                                <input type="text" value="1" class="quantity" name="quantity">
                                <span class="cong">+</span>
                            </div>
                            <div>
                                <span class="tong">${o.giamconChu}đ</span>
                            </div>
                            <div>
                                <a href="RemoveController?pid=${o.pid}"><img src="images/icon_cart_del.png" alt=""></a>
                            </div>
                        </div>
                    </c:forEach>
                        <div class="total1">
                            <div><strong>Tổng cộng: </strong><span class="total">đ</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="sangphai">
                    <button type="button" class="tieptuc"><a href="ProductController?index=1">Tiếp tục mua hàng</a></button>
                    <c:if test="${sessionScope.ac != null}">
                        <button type="submit" class="muahang">Tiến hành mua hàng</button>
                    </c:if>
                    <c:if test="${sessionScope.ac == null}">
                        <button type="button" class="muahang1">Tiến hành mua hàng</button>
                    </c:if>
                    <button type="submit" class="muahang hide9" >Tiến hành mua hàng</button>
                </div>
            </div>
        </form>
        
        <div class="container">
            <div class="tmp2"><h1>Các sản phẩm khác</h1></div>
        </div>

        <div class="product-index">
            <div class="container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                    <c:forEach items="${listThamKhao}" var='o'>
                        <div class="swiper-slide col-md-3">
                            <div class="productP">
                                <div class="imageP">
                                    <img src="${o.image}" alt="">
                                </div>
                                <div class="infoP">
                                    <h4><a href="DetailController?pid=${o.pid}">${o.pname}</a></h4>
                                    <c:if test="${o.isDiscount == 0}">
                                            <c:choose>
                                                <c:when test="${o.slc == 0}">
                                                    <div class="dacdiem">
                                                        <p>${o.priceChu}đ</p>
                                                        <p>Hết hàng</p>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <p>Giá: ${o.priceChu}đ</p>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>
                                        <c:if test="${o.isDiscount == 1}">
                                            <c:choose>
                                                <c:when test="${o.slc == 0}">
                                                    <div class="dacdiem">
                                                        <p>${o.priceChu}đ</p>
                                                        <p>Hết hàng</p>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="dacdiem">
                                                        <p>${o.giamconChu}đ</p>
                                                        <p class="gachngang">${o.priceChu}đ</p>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>
                                </div>
                                <c:if test="${o.slc > 0}">
                                    <button class="btnP"><a href="CartController?pid=${o.pid}">Add to cart</a></button>
                                </c:if>
                            </div>
                        </div>
                    </c:forEach>
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
