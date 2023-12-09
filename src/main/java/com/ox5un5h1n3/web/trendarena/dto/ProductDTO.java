package com.ox5un5h1n3.web.trendarena.dto;

import com.ox5un5h1n3.web.trendarena.entity.Category;
import jakarta.persistence.Column;
import jakarta.persistence.ManyToOne;
import jakarta.servlet.http.Part;

public class ProductDTO {

    private String pName;
    private String pDesc;
    private Part pPhoto;
    private int pPrice;
    private int pDiscount;
    private int pQuantity;
    private int pCategory;

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public Part getpPhoto() {
        return pPhoto;
    }

    public void setpPhoto(Part pPhoto) {
        this.pPhoto = pPhoto;
    }

    public int getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }

    public int getpDiscount() {
        return pDiscount;
    }

    public void setpDiscount(int pDiscount) {
        this.pDiscount = pDiscount;
    }

    public int getpQuantity() {
        return pQuantity;
    }

    public void setpQuantity(int pQuantity) {
        this.pQuantity = pQuantity;
    }

    public int getpCategory() {
        return pCategory;
    }

    public void setpCategory(int pCategory) {
        this.pCategory = pCategory;
    }
}
