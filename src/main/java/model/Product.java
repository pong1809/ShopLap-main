/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.math.BigDecimal;

/**
 *
 * @author LeeJaeLee
 */
public class Product {
    private int stt;
    private int pid;
    private String image;
    private String pname;
    private double price;
    private int slc;
    private int daban;
    private String tittle;
    private String description;
    private int isDiscount;
    private double discount;
    private String priceChu;
    private double giamCon;
    private String giamconChu;
    private String tenmay;
    private String ocung;
    private String cpu;
    private String ram;
    private String cardDH;
    private String manhinh;
    private String trongluong;
    private String hdh;
    private String xuatxu;
    private String tenpk;
    private String loai;
    private int isCate;
    private int amount;
    private double tongP;
    private String tongPChu;
    private double total;
    private String totalChu;
    private String cid;
    
    public Product() {
    }

    public Product(String image, String pname, String priceChu, int slc, String tittle, String description, int isDiscount, double discount, String cid, int isCate){
        this.image = image;
        this.pname = pname;
        this.priceChu = priceChu;
        this.slc = slc;
        this.tittle = tittle;
        this.description = description;
        this.isDiscount = isDiscount;
        this.discount = discount;
        this.cid = cid;
        this.isCate = isCate;
    }
    public Product(String image, String pname, String priceChu, int slc,int daban, String tittle, String description, int isDiscount, double discount, String cid, int isCate){
        this.image = image;
        this.pname = pname;
        this.priceChu = priceChu;
        this.slc = slc;
        this.tittle = tittle;
        this.description = description;
        this.isDiscount = isDiscount;
        this.discount = discount;
        this.cid = cid;
        this.daban=daban;
        this.isCate = isCate;
    }
    
    public Product(int pid, String image, String pname, double price, int slc, int daban, 
            String tittle, String description, int isDiscount, double discount, String priceChu, double giamCon, String giamconChu, int isCate) {
        this.pid = pid;
        this.image = image;
        this.pname = pname;
        this.price = price;
        this.slc = slc;
        this.daban = daban;
        this.tittle = tittle;
        this.description = description;
        this.isDiscount = isDiscount;
        this.discount = discount;
        this.priceChu = priceChu;
        this.giamCon = giamCon;
        this.giamconChu = giamconChu;
        this.isCate = isCate;
    }

    public Product(String tenmay, String ocung, String cpu, String ram, String cardDH, String manhinh, String trongluong, String hdh) {
        this.tenmay = tenmay;
        this.ocung = ocung;
        this.cpu = cpu;
        this.ram = ram;
        this.cardDH = cardDH;
        this.manhinh = manhinh;
        this.trongluong = trongluong;
        this.hdh = hdh;
    }
    
    
    
    public Product(int pid, String tenmay, String ocung, String cpu, String ram, String cardDH, String manhinh, String trongluong, String hdh) {
        this.pid = pid;
        this.tenmay = tenmay;
        this.ocung = ocung;
        this.cpu = cpu;
        this.ram = ram;
        this.cardDH = cardDH;
        this.manhinh = manhinh;
        this.trongluong = trongluong;
        this.hdh = hdh;
    }

    public Product(String xuatxu, String tenpk, String loai) {
        this.xuatxu = xuatxu;
        this.tenpk = tenpk;
        this.loai = loai;
    }

    
    
    public Product(int pid, String xuatxu, String tenpk, String loai) {
        this.pid = pid;
        this.xuatxu = xuatxu;
        this.tenpk = tenpk;
        this.loai = loai;
    }
    
    
    public int getPid() {
        return pid;
    }
    
    public void setPid(int pid) {
        this.pid = pid;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSlc() {
        return slc;
    }

    public void setSlc(int slc) {
        this.slc = slc;
    }

    public int getDaban() {
        return daban;
    }

    public void setDaban(int daban) {
        this.daban = daban;
    }
    
    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getIsDiscount() {
        return isDiscount;
    }

    public void setIsDiscount(int isDiscount) {
        this.isDiscount = isDiscount;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getPriceChu() {
        return priceChu;
    }

    public void setPriceChu(String priceChu) {
        this.priceChu = priceChu;
    }

    public double getGiamCon() {
        return giamCon;
    }

    public void setGiamCon(double giamCon) {
        this.giamCon = giamCon;
    }

    public String getGiamconChu() {
        return giamconChu;
    }

    public void setGiamconChu(String giamconChu) {
        this.giamconChu = giamconChu;
    }

    public int getIsCate() {
        return isCate;
    }

    public void setIsCate(int isCate) {
        this.isCate = isCate;
    }

    public String getTenmay() {
        return tenmay;
    }

    public void setTenmay(String tenmay) {
        this.tenmay = tenmay;
    }

    public String getOcung() {
        return ocung;
    }

    public void setOcung(String ocung) {
        this.ocung = ocung;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getCardDH() {
        return cardDH;
    }

    public void setCardDH(String cardDH) {
        this.cardDH = cardDH;
    }

    public String getManhinh() {
        return manhinh;
    }

    public void setManhinh(String manhinh) {
        this.manhinh = manhinh;
    }

    public String getTrongluong() {
        return trongluong;
    }

    public void setTrongluong(String trongluong) {
        this.trongluong = trongluong;
    }

    public String getHdh() {
        return hdh;
    }

    public void setHdh(String hdh) {
        this.hdh = hdh;
    }

    public String getXuatxu() {
        return xuatxu;
    }

    public void setXuatxu(String xuatxu) {
        this.xuatxu = xuatxu;
    }

    public String getTenpk() {
        return tenpk;
    }

    public void setTenpk(String tenpk) {
        this.tenpk = tenpk;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getTongP() {
        return tongP;
    }

    public void setTongP(double tongP) {
        this.tongP = tongP;
    }

    public String getTongPChu() {
        return tongPChu;
    }

    public void setTongPChu(String tongPChu) {
        this.tongPChu = tongPChu;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getTotalChu() {
        return totalChu;
    }

    public void setTotalChu(String totalChu) {
        this.totalChu = totalChu;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }
    
    
}
