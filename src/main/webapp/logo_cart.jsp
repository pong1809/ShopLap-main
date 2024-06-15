<%-- 
    Document   : logo_cart
    Created on : Apr 28, 2022, 9:47:58 PM
    Author     : LeeJaeLee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="site-branding-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10">
                        <div class="logo">
                            <h1><a href="#">PLap</a></h1>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="cart-show">
                            <div>
                                <a href="ShowCartController">
                                    <img src="images/shopping-cart (2).png" alt="">
                                    <span>${sessionScope.tmp}</span>
                                </a>
                                <p>Giỏ hàng</p> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
