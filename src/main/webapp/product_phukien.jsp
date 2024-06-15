<%-- 
    Document   : product_phukien
    Created on : May 1, 2022, 9:26:25 PM
    Author     : LeeJaeLee
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PLap</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href="css/style_1.css">
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

        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="category">
                            <h3>Phụ kiện</h3>
                        <c:forEach items='${listCL}' var='o'>
                            <h5><a href="CategoryPhukienController?cid=${o.cid}">${o.cname}</a></h5>
                        </c:forEach>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                        <c:forEach items='${listPTP}' var='o'>
                            <div class="col-md-4">
                                <div class="product">
                                    <div class="image">
                                        <img src="${o.image}" alt="">
                                    </div>
                                    <div class="info">
                                        <strong><a href="DetailController?pid=${o.pid}">${o.pname}</a></strong>
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
                                    <button class="btn"><a href="CartController?pid=${o.pid}">Add to cart</a></button>
                                </c:if>
                                </div>
                            </div>
                        </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page">
            <div class="container">
                <div class="row">
                    <div class="pagination">
                        <a href="#">&laquo;</a>
                    <c:forEach begin="1" end="${pageSize}" var="i">
                        <a href="ProductPhukienController?index=${i}">${i}</a>
                    </c:forEach>
                    <c:forEach begin="1" end="${pageSize1}" var="i">
                        <a href="ProductPhukienController?index=${i}">${i}</a>
                    </c:forEach>
                        <a href="#">&raquo;</a>
                     </div>
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
