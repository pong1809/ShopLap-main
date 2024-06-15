<%-- 
    Document   : edit4
    Created on : May 11, 2022, 11:59:40 PM
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
    </head>
    <body>
        <form action="EditProductController" class="form-them-sua1">
            <div class="container">
                <div class="them-sua1">
                    <input type="hidden" name="pid" value="${p.pid}">
                    <div>
                        <label for="chon-cateID1" class="gg1">Category:</label>
                        <select class="chon-cateID1" name="chon-cateID1">
                            <c:if test="${p.isCate == 1}">
                                <option value="1">Laptop</option>
                            </c:if>
                            <c:if test="${p.isCate == 0}">
                                <option value="0">Phụ kiện</option>
                            </c:if>
                        </select>
                    </div>
                    <div class="gg3">
                        <select class="chon-cate" name="chon-cate">
                            <c:forEach items="${listC}" var='o'>
                                <option value="${o.cid}">${o.cname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div>
                        <label for="photo">Chọn ảnh:</label>
                        <input type="file" id="photo" name="photo" placeholder="Enter Image">
                    </div>
                    <div>
                        <label for="tensp">Tên sản phẩm:</label>
                        <input type="text" id="tensp" name="sanp" value="${p.pname}" placeholder="Tên sản phẩm">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="gia">Giá (VND):</label>
                        <input type="text" id="gia" value="${p.priceChu}" name="gia" placeholder="Giá">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="slc">Số lượng:</label>
                        <input type="text" id="slc" name="slc" value="${p.slc}"  placeholder="Số lượng">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="tittle1">Mô tả:</label>
                        <input type="text" id="tittle1" name="tittle1" value="${p.tittle}" placeholder="Mô tả">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <label for="description1">Chi tiết:</label>
                        <textarea name="des" id="description1" cols="30" rows="10" placeholder="Chi tiết"></textarea>
                    </div>
                    <c:if test="${p.isCate == 1}">
                        <div class="info-laptop1">
                            <div>
                                <label for="tenmay">Tên máy:</label>
                                <input type="text" id="tenmay" name="tenmay" placeholder="Tên máy">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="ocung">Ổ cứng:</label>
                                <input type="text" id="ocung" name="ocung" placeholder="Ổ cứng">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="cpu">CPU:</label>
                                <input type="text" id="cpu" name="cpu" placeholder="CPU">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="ram">RAM:</label>
                                <input type="text" id="ram" name="ram" placeholder="RAM">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="card">Card:</label>
                                <input type="text" id="card" name="card" placeholder="Card">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="manhinh">Màn hình:</label>
                                <input type="text" id="manhinh" name="manhinh" placeholder="Màn hình">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="Trọng lượng">Trọng lượng:</label>
                                <input type="text" id="trongluong" name="trongluong" placeholder="Trọng lượng">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="hdh">Hệ điều hành:</label>
                                <input type="text" id="hdh" name="hdh" placeholder="Hệ điều hành">
                                <span class="form-message"></span>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${p.isCate == 0}">
                        <div class="info-phukien1">
                            <div>
                                <label for="xuatxu">Xuất xứ:</label>
                                <input type="text" id="xuatxu" name="xuatxu" placeholder="Xuất xứ">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="tenpk">Tên sản phẩm:</label>
                                <input type="text" id="tenpk" name="tenpk" placeholder="Nhập">
                                <span class="form-message"></span>
                            </div>
                            <div>
                                <label for="loai">Loại:</label>
                                <input type="text" id="loai" name="loai" placeholder="Loại">
                                <span class="form-message"></span>
                            </div>
                        </div>
                    </c:if>
                    <div>
                        <label for="luachon-discount1" class="gg">Giảm giá:</label>
                        <select name="luachon-discount" class="luachon-discount1">
                            <option value="0">No</option>
                            <option value="1">Yes</option>
                        </select>
                        <div class="dis1 hide">
                            <label for="text-discount">Giảm (%):</label>
                            <input type="text" name="giatri-discount" id="text-discount" placeholder="Giảm">
                            <span class="form-message"></span>
                        </div>
                    </div>
                    <div class="btn-them-sua">
                        <button class="b-sua">Sửa</button>
                    </div>
                </div>
            </div>
        </form>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
    <script>
        var yes1 = document.querySelector(".luachon-discount1");
        var dis1 = document.querySelector(".dis1");
        function myFun1(){
            if(yes1.value == "1"){
                dis1.classList.remove('hide')
            }
            else{
                dis1.classList.add("hide")
            }
        }
        yes1.addEventListener('click', myFun1)
    </script>
</html>
