/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author LeeJaeLee
 */
public class AddProductController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String isCate = request.getParameter("chon-cateID");
        int tmp2 = Integer.parseInt(isCate);
        String cid = request.getParameter("chon-cid");
        String image = "images/" + request.getParameter("photo");
        String pname = request.getParameter("sanp");
        String price = request.getParameter("gia");
        String sl = request.getParameter("slc");
        int slc = Integer.parseInt(sl);
        String tittle = request.getParameter("tittle1");
        String description = request.getParameter("des");
        String isDiscount = request.getParameter("luachon-discount");
        int tmp = Integer.parseInt(isDiscount);
        double tmp1 = 0;
        if(isDiscount.equals("0")){
            tmp1 = 0;
        }else{
            String discount = request.getParameter("giatri-discount");
            tmp1 = Double.parseDouble(discount);
        }
        int h=0;
        DAO dao = new DAO();
        Product p = new Product(image, pname, price, slc,h, tittle, description, tmp, tmp1, cid, tmp2);
        dao.addProduct(p);
        Product p1 = dao.getProductDB();
        if(isCate.equals("1")){
            dao.addPIDtoInfoLT(p1.getPid());
        }else{
            dao.addPIDtoInfoPK(p1.getPid());
        }
        HttpSession session = request.getSession();
        session.setAttribute("mes", "Thêm hàng thành công");
        request.getRequestDispatcher("ManagerController").forward(request, response);
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

    public boolean laSo(String num){
        return Pattern.matches("^[0-9]", num);
    }
    
}
