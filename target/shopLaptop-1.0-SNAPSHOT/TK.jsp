
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ page import="java.text.DecimalFormat" %>

<%!
    public String formatCurrency(double value) {
        DecimalFormat formatter = new DecimalFormat("#,###");
        return formatter.format(value);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Thống kê sản phẩm bán chạy</title>
        <link rel="stylesheet" href="css/style_2.css">
    </head>
    <body>
        <h1>Thống kê sản phẩm bán chạy</h1>
        <form action="BestSellingProducts" method="get">
            <label for="startDate">Ngày bắt đầu:</label>
            <input type="date" id="startDate" name="startDate" required>
            <br><br>
            <label for="endDate">Ngày kết thúc:</label>
            <input type="date" id="endDate" name="endDate" required>
            <br><br>
            <button type="submit">Thống kê</button>
        </form>
       <h1>Total Revenue</h1>
       <div><script>
                            var total = "${totalRevenue}";

// Chuyển chuỗi thành số nguyên
                            var totalNumber = parseFloat(total);

// Hàm định dạng số thành chuỗi với dấu phân cách hàng nghìn là dấu chấm
                            function formatCurrency(number) {
                                return new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'VND'}).format(number);
                            }

// Hiển thị tổng giá tiền đã định dạng
                            document.write(formatCurrency(totalNumber) + "đ");
                            </script></div>

        <h1>TK bán chạy</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Product Name</th>
                    
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
            <tbody>
                <c:forEach var="product" items="${topSellingProducts}">
                    <tr>
                        <td>${product.pname}</td>
                        
                        <td>${product.totalRevenue}</td>

                    </tr>
                </c:forEach>
            </tbody>

        </tbody>
    </table>
        <h1>TK doanh thu</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Amount</th>
                    <th>Total Revenue</th>
                </tr>
            </thead>
            <tbody>
            <tbody>
                <c:forEach var="product" items="${topSellingProducts1}">
                    <tr>
                        <td>${product.pname}</td>
                        <td>${product.amount}</td>
                        <td><script>
                            var total = "${product.totalRevenue}";

// Chuyển chuỗi thành số nguyên
                            var totalNumber = parseFloat(total);

// Hàm định dạng số thành chuỗi với dấu phân cách hàng nghìn là dấu chấm
                            function formatCurrency(number) {
                                return new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'VND'}).format(number);
                            }

// Hiển thị tổng giá tiền đã định dạng
                            document.write(formatCurrency(totalNumber) + "đ");
                            </script></td>

                    </tr>
                </c:forEach>
            </tbody>

        </tbody>
    </table>

</body>
</html>
