<%-- 
    Document   : headerShop
    Created on : Apr 28, 2022, 9:49:01 PM
    Author     : LeeJaeLee
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="header-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="user-menu">
                            <ul>
                                <li><a href="HomeController"><i class="fa-solid fa-laptop"></i>Home</a></li>
                                <c:if test="${sessionScope.ac.isAdmin == 0}">
                                    <c:if test="${sessionScope.ac != null}">
                                        <li><a href="InfoAccountController?username=${sessionScope.ac.username}"><i class="fa fa-user"></i>Account</a></li>
                                    </c:if>
                                </c:if>
                                <c:if test="${sessionScope.ac.isAdmin == 1}">
                                    <li><a href="ManagerController?index=1"><i class="fa fa-user"></i>Product Manager</a></li>
                                </c:if>
                                <c:if test="${sessionScope.ac != null}">
                                    <li><a href="#"><i class="fa fa-user"></i>Xin chào ${sessionScope.ac.username}</a></li>
                                    <li><a href="LogoutController"><i class="fa fa-user"></i>Logout</a></li>
                                </c:if>
                                <c:if test="${sessionScope.ac == null}">
                                    <li><a href="login.jsp"><i class="fa fa-user"></i>Login</a></li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <form action="SearchController1" class="search" method="get">
                            <input type="text" placeholder="Search..." name="search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
