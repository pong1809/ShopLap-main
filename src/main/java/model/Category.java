/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LeeJaeLee
 */
public class Category {
    private int cid;
    private String cname;
    private int isCate;

    public Category() {
    }

    public Category(int cid, String cname, int isCate) {
        this.cid = cid;
        this.cname = cname;
        this.isCate = isCate;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }



    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getIsCate() {
        return isCate;
    }

    public void setIsCate(int isCate) {
        this.isCate = isCate;
    }
    
    
}
