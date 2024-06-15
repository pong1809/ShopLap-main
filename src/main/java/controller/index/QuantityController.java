/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.index;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author LeeJaeLee
 */
public class QuantityController extends HttpServlet {

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
        HttpSession session = request.getSession();
        String quantity[] = request.getParameterValues("quantity");
        List<Integer> amount = new ArrayList<>();
        for(String s:quantity){
            amount.add(Integer.parseInt(s));
        }
        Cookie a[] = request.getCookies();
        List<Product> list = new ArrayList<>();
        List<Integer> list1 = new ArrayList<>();
        List<Product> list2 = new ArrayList<>();
        DAO dao = new DAO();
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
        
        boolean ok = true;
        
        for(int i = 0; i < list.size(); i++){
            list.get(i).setStt(i + 1);
            list.get(i).setAmount(amount.get(i));
        }
        
        for(Product p:list){
            p.setTongP(p.getGiamCon()*p.getAmount());
        }
        
        double tmp = 0;
        
        for(Product p:list){
            tmp += p.getTongP();
        }
        
        for(Product p:list){
            p.setTongPChu(formatDouble(doubleToSring(p.getTongP())));
        }
        
        for(Product p:list){
            if(p.getAmount() > p.getSlc()){
                ok = false;
                list1.add(p.getAmount());
                list2.add(p);
            }
        }
        
        if(ok){
            session.removeAttribute("list1");
            session.removeAttribute("list_tmp");
            request.setAttribute("list", list);
            request.setAttribute("totalne", formatDouble(doubleToSring(tmp)));
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        }else{
            session.setAttribute("list1", list1);
            session.setAttribute("list_tmp", list2);
            response.sendRedirect("ShowCartController");
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

    public static String formatDouble(String input) {
        double num = Double.parseDouble(input);
        return String.format(Locale.GERMAN, "%,.0f", num);
    }
    
    public static String doubleToSring(Double d){
        if (d == null)
            return null;
        if (d.isNaN() || d.isInfinite())
            return d.toString();

        return new BigDecimal(d.toString()).stripTrailingZeros().toPlainString();
    }
}
