/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.index;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LeeJaeLee
 */
public class RemoveController extends HttpServlet {

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
        String pid = request.getParameter("pid");
        Cookie a[] = request.getCookies();
        String txt = "";
        for(Cookie c:a){
            if(c.getName().equals("pid")){
                txt = txt + c.getValue();
                c.setMaxAge(0);
                response.addCookie(c);
            }
        }
        // Cập nhật lại cookie lúc sau chỉ còn giá trị của cookie ban đầu không chứa cái cookie lấy dc về
        String pids[] = txt.split("/");
        String txt_tmp = "";
        for(int i = 0; i < pids.length; i++){
            if(!pids[i].equals(pid)){
                if(txt_tmp.isEmpty()){
                    txt_tmp = pids[i];
                }else{
                    txt_tmp = txt_tmp + "/" + pids[i];
                }
            }
        }
        if(!txt_tmp.isEmpty()){
            Cookie c = new Cookie("pid", txt_tmp);
            c.setMaxAge(60*60*24);
            response.addCookie(c);
        }
        session.removeAttribute("thongbao");
        response.sendRedirect("ShowCartController");
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
