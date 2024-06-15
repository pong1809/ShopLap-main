/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.manager;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
import model.Category;
import model.Product;

/**
 *
 * @author Administrator
 */
@WebServlet("/Orderprocessing")

public class Orderprocessing extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAO dao = new DAO();
        List<Cart> list_cart = dao.getAllCart();

        // Tạo một Map để gộp các mục theo ID
        Map<Integer, Cart> mergedCartMap = new HashMap<>();

        // Lặp qua danh sách cart và gộp chúng
        for (Cart cart : list_cart) {
            int productId = cart.getIda();

            // Nếu sản phẩm đã tồn tại trong Map, cập nhật số lượng và tổng tiền
            if (mergedCartMap.containsKey(productId)) {
                Cart existingCart = mergedCartMap.get(productId);
                existingCart.setAmount(existingCart.getAmount() + cart.getAmount());
                existingCart.setTotal(existingCart.getTotal() + cart.getTotal());
            } else {
                // Nếu không, thêm sản phẩm vào Map
                mergedCartMap.put(productId, cart);
            }
        }

        // Chuyển đổi Map thành danh sách các cart gộp
        List<Cart> mergedCartList = new ArrayList<>(mergedCartMap.values());
        // Lặp qua danh sách cart và gộp chúng
        for (Cart cart : list_cart) {
            int productId = cart.getIda();
            String total = cart.getTotal().replace(".", ""); // Loại bỏ các dấu chấm từ chuỗi total

            // Nếu sản phẩm đã tồn tại trong Map, cập nhật số lượng và tổng tiền
            if (mergedCartMap.containsKey(productId)) {
                Cart existingCart = mergedCartMap.get(productId);
                existingCart.setAmount(existingCart.getAmount() + cart.getAmount());
                double existingTotal = Double.parseDouble(existingCart.getTotal().replace(".", "")); // Chuyển đổi tổng tiền hiện có sang double
                double newTotal = existingTotal + Double.parseDouble(total); // Cộng tổng tiền mới vào tổng tiền hiện có
                existingCart.setTotal(String.valueOf(newTotal)); // Cập nhật tổng tiền mới cho sản phẩm
            } else {
                // Nếu không, thêm sản phẩm vào Map
                mergedCartMap.put(productId, cart);
            }
        }

        // Chuyển danh sách đã gộp qua JSP để hiển thị
        request.setAttribute("list_cart", mergedCartList);

        request.getRequestDispatcher("orderprocessing.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
