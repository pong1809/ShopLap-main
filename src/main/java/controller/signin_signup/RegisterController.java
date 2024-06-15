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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author LeeJaeLee
 */
public class RegisterController extends HttpServlet {

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
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String pass1 = request.getParameter("password1");
        String mes1 = "";
        String mes2 = "";
        String mes3 = "";
        String mes4 = "";
        boolean ok = true;
        DAO dao = new DAO();
        List<Account> listA = dao.getAllAccounts();
        if(checkUser(user) == false){
            ok = false;
            mes1 = "Chỉ nhập các kí tự a-z hoặc A-Z hoặc 0-9";
            mes3 = "Đăng kí không thành công";
        }
        if(user.isEmpty()){
            ok = false;
            mes1 = "Nhập tài khoản";
            mes3 = "Đăng kí không thành công";
        }
        if(pass.isEmpty()){
            ok = false;
            mes2 = "Nhập mật khẩu";
            mes3 = "Đăng kí không thành công";
        }
        if(pass1.isEmpty()){
            ok = false;
            mes4 = "Nhập mật khẩu";
            mes3 = "Đăng kí không thành công";
        }
        if(!pass1.equals(pass)){
            ok = false;
            mes4 = "Mật khẩu không khớp";
            mes3 = "Đăng kí không thành công";
        }
        if(trungNhau(user, listA)){
            ok = false;
            mes1 = "Tài khoản bị trùng";
            mes3 = "Đăng kí không thành công";
        }
        if(ok){
            dao.register(user, hashPass(pass));
            request.setAttribute("mes3", "Đăng kí thành công");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        else{
            request.setAttribute("mes4", mes4);
            request.setAttribute("mes1", mes1);
            request.setAttribute("mes2", mes2);
            request.setAttribute("mes3", mes3);
            request.getRequestDispatcher("register.jsp").forward(request, response);
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
    
    public boolean trungNhau(String username, List<Account> listA){
        for(Account a:listA){
            if(a.getUsername().equalsIgnoreCase(username)){
                return true;
            }
        }
        return false;
    }
    
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
