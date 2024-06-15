/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author LeeJaeLee
 */
public class Cart {
    private int stt;
    private int ida;
    private String username;
    private String hoten;
    private String phone;
    private String diachi;
    private String email;
    private String ghichu;
    private String image;
    private String pname;
    private int amount;
    private int sumamount;

    
    private String giaChu;
    private String total;
    private String resAll;
    private boolean isApproved;
    private int pid;
    private int slc; // Thêm trường slc
    private int daban; // Thêm trường daban
     private Date orderDate;
       private int totalSold;
    private double totalRevenue;
        private double calculatedValue;

   public Cart() {
    }

    public Cart(int ida, String username, String hoten, String phone, String diachi, String email, String image, String pname, int amount, String total, boolean isApproved, int pid) {
        this.ida = ida;
        this.username = username;
        this.hoten = hoten;
        this.phone = phone;
        this.diachi = diachi;
        this.email = email;
        this.image = image;
        this.pname = pname;
        this.amount = amount;
        this.total = total;
        this.isApproved = isApproved;
        this.pid = pid;
    }

    public Cart(String username, String hoten, String phone, String diachi, String email, String ghichu, String resAll, boolean isApproved) {
        this.username = username;
        this.hoten = hoten;
        this.phone = phone;
        this.diachi = diachi;
        this.email = email;
        this.ghichu = ghichu;
        this.resAll = resAll;
        this.isApproved = isApproved;
   
    }

    public Cart(int ida, String username, String hoten, String phone, String diachi, String email, String ghichu, String resAll, int pid) {
        this.ida = ida;
        this.username = username;
        this.hoten = hoten;
        this.phone = phone;
        this.diachi = diachi;
        this.email = email;
        this.ghichu = ghichu;
        this.resAll = resAll;
        this.pid = pid;
    }
       public Cart(int ida, String username, String hoten, String phone, String diachi, String email, String ghichu, String resAll) {
        this.ida = ida;
        this.username = username;
        this.hoten = hoten;
        this.phone = phone;
        this.diachi = diachi;
        this.email = email;
        this.ghichu = ghichu;
        this.resAll = resAll;
        
    }

 public Cart(int ida, String username, String image, String pname, int amount, String total, boolean isApproved, int pid, Date orderDate) {
        this.ida = ida;
        this.username = username;
        this.image = image;
        this.pname = pname;
        this.amount = amount;
        this.total = total;
        this.isApproved = isApproved;
        this.pid = pid;
        this.orderDate = orderDate;  // Gán giá trị cho orderDate
    }

    public double getCalculatedValue() {
        return calculatedValue;
    }

    public void setCalculatedValue(double calculatedValue) {
        this.calculatedValue = calculatedValue;
    }

    public String getGiaChu() {
        return giaChu;
    }

    public void setGiaChu(String giaChu) {
        this.giaChu = giaChu;
    }

    public int getSumamount() {
        return sumamount;
    }

    public void setSumamount(int sumamount) {
        this.sumamount = sumamount;
    }

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }
    
    
    
    public int getIda() {
        return ida;
    }

    public void setIda(int ida) {
        this.ida = ida;
    }
    
    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public String getResAll() {
        return resAll;
    }

    public void setResAll(String resAll) {
        this.resAll = resAll;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
      public boolean getisApproved() {
        return isApproved;
    }

    public void setApproved(boolean isApproved) {
        this.isApproved = isApproved;
    }
     public int getPid() {
        return pid;
    }
     public int getSlc() {
        return slc;
    }

    public void setSlc(int slc) {
        this.slc = slc;
    }
    public void setPid(int pid) {
        this.pid = pid;
    }
    public int getDaban() {
        return daban;
    }

    public void setDaban(int daban) {
        this.daban = daban;
    }
    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }
     public int getTotalSold() {
        return totalSold;
    }

    public void setTotalSold(int totalSold) {
        this.totalSold = totalSold;
    }

    public double getTotalRevenue() {
        return totalRevenue;
    }

    public void setTotalRevenue(double totalRevenue) {
        this.totalRevenue = totalRevenue;
    }
}
