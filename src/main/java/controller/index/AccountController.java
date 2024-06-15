/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.index;

import com.google.common.hash.Hashing;
import static controller.index.QuantityController.doubleToSring;
import static controller.index.QuantityController.formatDouble;
import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Cart;
import model.Product;

/**
 *
 * @author LeeJaeLee
 */
public class AccountController extends HttpServlet {

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
        DAO dao = new DAO();
        HttpSession session = request.getSession();
        String quantity[] = request.getParameterValues("amount");
        String total = request.getParameter("res-total");
        String username = request.getParameter("tk");
        String password = request.getParameter("mk");
        String password_mahoa = hashPass(password);
        String hoten = request.getParameter("ht");
        String phone = request.getParameter("dt");
        String diachi = request.getParameter("dc");
        String email = request.getParameter("email");
        String ghichu = request.getParameter("ghichu");
        String thanhtoan = request.getParameter("thanhtoan");
        String pid = request.getParameter("pid");
        Cookie a[] = request.getCookies();
        
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
        
        boolean ok = true;
        String mes1 = "";
        String mes2 = "";
        String mes3 = "";
        String mes4 = "";
        String mes5 = "";
        String mes6 = "";
        String mes7 = "";
        
        if(username.isEmpty()){
            ok = false;
            mes1 = "Không được để trống";
        }
        if(password.isEmpty()){
            ok = false;
            mes2 = "Không được để trống";
        }
        if(hoten.isEmpty()){
            ok = false;
            mes3 = "Không được để trống";
        }
        if(phone.isEmpty()){
            ok = false;
            mes4 = "Không được để trống";
        }
        if(diachi.isEmpty()){
            ok = false;
            mes5 = "Không được để trống";
        }
        if(checkEmail(email)){
            ok = false;
            mes6 = "Sai định dạng Email";
        }
        Account ac = dao.login(username, password_mahoa);
        if(ac == null){
            ok = false;
            mes7 = "Tài khoản của bạn không tồn tại vui lòng đăng nhập để thanh toán";
        }
        if(ok){
            if(thanhtoan == null)
            {
                request.setAttribute("thanhthanh", "Vui lòng chọn phương thức thanh toán");
                request.setAttribute("username", username);
                request.setAttribute("hoten", hoten);
                request.setAttribute("phone", phone);
                request.setAttribute("diachi", diachi);
                request.setAttribute("email", email);
                request.setAttribute("ghichu", ghichu);
                request.setAttribute("list", list);
                
                request.setAttribute("totalne", formatDouble(doubleToSring(tmp)));
                request.getRequestDispatcher("checkout.jsp").forward(request, response);
            }
            if(thanhtoan.equals("1")){
                request.setAttribute("username", username);
                request.setAttribute("hoten", hoten);
                request.setAttribute("phone", phone);
                request.setAttribute("diachi", diachi);
                request.setAttribute("email", email);
                request.setAttribute("ghichu", ghichu);
               
                
                Cart info_cart = new Cart(username, hoten, phone, diachi, email, ghichu, formatDouble(doubleToSring(tmp)),false);
                dao.addInfoAccount(info_cart);
                request.setAttribute("ida", dao.getIDA().getIda());
                session.setAttribute("ac1", ac);
                request.setAttribute("list", list);
                request.setAttribute("totalne", formatDouble(doubleToSring(tmp)));
                request.getRequestDispatcher("info_account.jsp").forward(request, response);
            }
            else{
                request.setAttribute("username", username);
                request.setAttribute("hoten", hoten);
                request.setAttribute("phone", phone);
                request.setAttribute("diachi", diachi);
                request.setAttribute("email", email);
                request.setAttribute("ghichu", ghichu);
                request.setAttribute("totalne", formatDouble(doubleToSring(tmp)));
                request.getRequestDispatcher("checkout1.jsp").forward(request, response);
            }
        }
        else{
            request.setAttribute("thanhthanh", "Vui lòng chọn phương thức thanh toán");
            request.setAttribute("mes1", mes1);
            request.setAttribute("mes2", mes2);
            request.setAttribute("mes3", mes3);
            request.setAttribute("mes4", mes4);
            request.setAttribute("mes5", mes5);
            request.setAttribute("mes6", mes6);
            request.setAttribute("mes7", mes7);
            request.setAttribute("list", list);
            session.setAttribute("ac1", ac);
            request.setAttribute("totalne", tmp);
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
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
    
    public String hashPass(String password){
        String tmp = "";
        try {
            tmp = Hashing.sha256().hashString(password, StandardCharsets.UTF_8).toString();
        } catch (Exception e) {
        }
        return tmp;
    }

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
    
    public boolean checkEmail(String email){
        return Pattern.matches("\\b[A-Z0-9._%-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b", email);
    }
}
