<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tất cả đơn hàng cần xét duyệt</title>
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
                    <h1>Tất cả đơn hàng cần xét duyệt</h1>
                </div>
            </div>
        <div class="quanly">
            <div class="container">
                <div class="table1">
                    <div class="head1">
                        <div>ID</div>
                        <div>Username</div>
                        <div>Lựa chọn</div>
                        
                    </div>
                    <c:forEach items="${list_cart}" var='o'>
                        <div class="about1">
                            <div>${o.ida}</div>
                            <div>
                                ${o.username}
                            </div>
                            
                            <div>
                                <a href="AdminShowCart?ida=${o.ida}">Xem</a>
                            </div>
                           
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
            








 
        <!--footer-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--footer end-->

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/app.js"></script>
    </body>
</html>
