/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.List;
import java.util.regex.Pattern;
import model.Cart;
import model.Category;
import model.Product;

/**
 *
 * @author LeeJaeLee
 */
public class test {
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Cart> list1 = dao.getInfoAccountByUsername("cuong");
        for(Cart c:list1){
            System.out.println(c.getIda() + " " + c.getUsername());
        }
        String num = "20.000.000";
        System.out.println(Double.parseDouble(num.replace(".", "")));
        String reg = "^[0-9]+";
//        dao.updateProduct("1", "images/demo.webp", "ok", "12323234", 7, "Oidoioi", "Ok", 0, 0);
        dao.updateInforLap("1", "ok", "ok", "ok", "ok", "ok", "ok", "ok", "ok");
        dao.updateInforPK("32", "ok", "ok", "ok");
    }
}
