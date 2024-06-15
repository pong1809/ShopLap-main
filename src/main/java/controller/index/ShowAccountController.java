/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.index;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Cart;

/**
 *
 * @author LeeJaeLee
 */
public class ShowAccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String ida = request.getParameter("ida");
        DAO dao = new DAO();
        List<Cart> list_cart = dao.getCartByIDA(ida);
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("ac");
        List<Cart> info_cart = dao.getInfoAccountByUsername(account.getUsername());
        for(int i = 0; i < list_cart.size(); i++){
            list_cart.get(i).setStt(i + 1);
            String num = list_cart.get(i).getTotal();
            num = num.replace(".", "");
            double tmp = Double.parseDouble(num)/list_cart.get(i).getAmount();
            list_cart.get(i).setGiaChu(formatDouble(doubleToSring(tmp)));
        }
        request.setAttribute("info_cart", info_cart);
        request.setAttribute("list_cart", list_cart);
        request.getRequestDispatcher("account.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public static String formatDouble(String input) {
        double num = Double.parseDouble(input);
        return String.format(Locale.GERMAN, "%,.0f", num);
    }

    public static String doubleToSring(Double d) {
        if (d == null) {
            return null;
        }
        if (d.isNaN() || d.isInfinite()) {
            return d.toString();
        }

        return new BigDecimal(d.toString()).stripTrailingZeros().toPlainString();
    }
}
