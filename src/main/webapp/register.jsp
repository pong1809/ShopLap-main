<%-- 
    Document   : register
    Created on : Apr 20, 2022, 11:27:44 PM
    Author     : LeeJaeLee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="css/style-login-signup.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div id="login">
            <h2>Đăng ký tài khoản</h2>
            <form action="RegisterController" id="form" method="post" name="form">
                <p class="text-danger">${mes3}</p>
                <div>
                    <label for="username">Tài khoản: </label>
                    <input type="text" name="username" id="username" placeholder="username"><br>
                    <span class="form-message invalid">${mes1}</span><br>
                </div>
                <div>
                    <label for="password">Mật khẩu: </label>
                    <input type="password" name="password" id="password" placeholder="password" onfocus="this.value = ''"><br>
                    <span class="form-message invalid">${mes2}</span><br>
                </div>
                <div>
                    <label for="password1">Nhập lại mật khẩu: </label>
                    <input type="password" name="password1" id="password1" placeholder="Nhập lại password" onfocus="this.value = ''"><br>
                    <span class="form-message invalid">${mes4}</span><br>
                </div>
                <div id="btn-form">
                    <button class="btn-log" type="submit"><i class="fa-solid fa-user-plus"></i> Đăng ký</button>
                    <button class="btn-exit" type="button"><a href="HomeController"><i class="fa-solid fa-arrow-right-from-bracket"></i> Thoát</a></button>
                </div>
            </form>
            <button class="sign-up"><a href="login.jsp"><i class="fa-solid fa-arrow-right-to-bracket"></i> Đăng nhập</a></button>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>