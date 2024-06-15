/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.index;

import static controller.index.AccountController.doubleToSring;
import static controller.index.AccountController.formatDouble;
import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Product;

/**
 *
 * @author LeeJaeLee
 */
public class SaveTransactionController extends HttpServlet {

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
        String thanhtoan = request.getParameter("thanhtoantainha");
        String quantity[] = request.getParameterValues("amount");
        String total = request.getParameter("res-total");
        HttpSession session = request.getSession();
        Cookie a[] = request.getCookies();
        DAO dao = new DAO();
        Date orderDate = new Date();
        List<Product> list = new ArrayList<>();
        
        for(Cookie c:a){
            if(c.getName().equals("pid")){
                String txt[] = c.getValue().split("/");
                for(String s:txt){
                    list.add(dao.getProductByPID(s));
                  
                }
            }
        }
        
        for (int i = 0; i < list.size(); i++) {
            for (int j = i+1; j < list.size(); j++) {
                if(list.get(i).getPid() == list.get(j).getPid()){
                    list.remove(j);
                    j--;
                }
            }
        }
        
        List<Integer> list1 = new ArrayList<>();
        for(String s:quantity){
            list1.add(Integer.parseInt(s));
        }
        
        for(int i = 0; i < list.size(); i++){
            list.get(i).setStt(i + 1);
            list.get(i).setAmount(list1.get(i));
        }
        
        for(Product p:list){
            p.setTongP(p.getGiamCon()*p.getAmount());
        }
        
        for(Product p:list){
            p.setTongPChu(formatDouble(doubleToSring(p.getTongP())));
        }
        
        double tmp = 0;
        
        for(Product p:list){
            tmp += p.getTongP();
        }
//        
//        for(Product p:list){
//            dao.updateSLCsaukhimua(p.getSlc(), p.getAmount(), p.getDaban(), String.valueOf(p.getPid()));
//        }
        
        List<Cart> listCart = new ArrayList<>();
        for(Product p: list){
            System.out.println(p.getPid());
            listCart.add(new Cart(dao.getIDA().getIda(), dao.getIDA().getUsername(), p.getImage(), p.getPname(), p.getAmount(), p.getTongPChu(), false, p.getPid(),orderDate));
        }
        
        for(Cart c:listCart){
            dao.insertCart(c);
            c.setResAll(formatDouble(doubleToSring(tmp)));
        }
        session.setAttribute("thongbao", "Mua hàng thành công");
        request.getRequestDispatcher("ShowCartController").forward(request, response);
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
