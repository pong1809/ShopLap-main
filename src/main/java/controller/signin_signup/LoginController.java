/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.signin_signup;

import com.google.common.hash.Hashing;
import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author LeeJaeLee
 */
public class LoginController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        String user = request.getParameter("username");
        String passnhap = request.getParameter("password");
        String pass = hashPass(request.getParameter("password"));
        String mes1 = "";
        String mes2 = "";
        String mes3 = "";
        boolean ok = true;
        DAO dao = new DAO();
        if(checkUser(user) == false){
            ok = false;
            mes1 = "Chỉ nhập các kí tự a-z hoặc A-Z hoặc 0-9";
            mes3 = "Đăng nhập không thành công";
        }
        if(user.isEmpty()){
            ok = false;
            mes1 = "Nhập tài khoản";
            mes3 = "Đăng nhập không thành công";
        }
        if(passnhap.isEmpty()){
            ok = false;
            mes2 = "Nhập mật khẩu";
            mes3 = "Đăng nhập không thành công";
        }
        Account ac = dao.login(user, pass);
        if(ac == null){
            ok = false;
        }
        if(ok){
            HttpSession session = request.getSession();
            session.setAttribute("ac", ac);
            session.removeAttribute("tmp");
            Cookie a[] = request.getCookies();
            for(Cookie o:a){
                if(o.getName().equals("pid")){
                    o.setValue("");
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
            response.sendRedirect("HomeController");
        }
        else{
            request.setAttribute("mes1", mes1);
            request.setAttribute("mes2", mes2);
            request.setAttribute("mes3", mes3);
            request.getRequestDispatcher("login.jsp").forward(request, response);
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

    public boolean checkUser(String username){
        String reg = "^[a-zA-Z0-9]+";
        return Pattern.matches(reg, username);
    }
    
    public String hashPass(String password){
        String tmp = "";
        try {
            tmp = Hashing.sha256().hashString(password, StandardCharsets.UTF_8).toString();
        } catch (Exception e) {
        }
        return tmp;
    }
}
