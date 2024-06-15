/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
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
public class EditProductController extends HttpServlet {

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
        HttpSession session = request.getSession();
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid = request.getParameter("pid");
        String isCate = request.getParameter("chon-cateID1");
        int p=1;
        DAO dao = new DAO();
        if(isCate.equals("1")){
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
            String tenmay = request.getParameter("tenmay");
            String ocung = request.getParameter("ocung");
            String cpu = request.getParameter("cpu");
            String ram = request.getParameter("ram");
            String card = request.getParameter("card");
            String manhinh = request.getParameter("manhinh");
            String trongluong = request.getParameter("trongluong");
            String hdh = request.getParameter("hdh");
            dao.updateProduct(pid, image, pname, price, slc,0, tittle, description, tmp, tmp1,1,1);
            dao.updateInforLap(pid, tenmay, ocung, cpu, ram, card, manhinh, trongluong, hdh);
            session.setAttribute("mes", "Sửa thông tin sản phẩm thành công");
            response.sendRedirect("ManagerController");
        }else{
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
            String xuatxu = request.getParameter("xuatxu");
            String tenpk = request.getParameter("tenpk");
            String loai = request.getParameter("loai");
            dao.updateProduct(pid, image, pname, price, slc,0, tittle, description, tmp, tmp1,1,1);
            dao.updateInforPK(pid, xuatxu, tenpk, loai);
            session.setAttribute("mes", "Sửa thông tin sản phẩm thành công");
            response.sendRedirect("ManagerController");
        }
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

}
