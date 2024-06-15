/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.manager;

import dao.DAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;

@WebServlet("/BestSellingProducts")
public class BestSellingProducts extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");

        // Tạo đối tượng DAO
        DAO dao = new DAO();

        // Lấy danh sách các sản phẩm bán chạy nhất từ DAO
        double totalRevenue = dao.getTotalRevenue(startDate, endDate);
        List<Cart> topSellingProducts = dao.getTopSellingProducts2(startDate, endDate);
        List<Cart> topSellingProducts1 = dao.getTopSellingProducts1(startDate, endDate);
//         for (Cart product : topSellingProducts) {
//            System.out.println("Product Name: " + product.getPname());
//            System.out.println("Total Sold: " + product.getTotalSold());
//            System.out.println("Total Revenue: " + product.getTotalRevenue());
//        }
        // Đặt danh sách sản phẩm vào thuộc tính của request
        request.setAttribute("topSellingProducts", topSellingProducts);
        request.setAttribute("topSellingProducts1", topSellingProducts1);
        request.setAttribute("totalRevenue", totalRevenue);
        // Chuyển hướng đến trang JSP để hiển thị
        request.getRequestDispatcher("TK.jsp").forward(request, response);
    }
}
