package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.orders;

import javax.persistence.Column;

public class ordersDTO {
    private Long id;

    private String productName;

    private String type;

    private String category;

    private String image;

    private String user;

    private String fee;

    private String orderId;

    private String date;

    private String total;

    private String status;


    public ordersDTO(){

    }

    public ordersDTO(orders orders){
        this.id=orders.getId();
        this.productName=orders.getProductName();
        this.type=orders.getType();
        this.category=orders.getCategory();
        this.image=orders.getImage();
        this.user=orders.getUser();
        this.fee=orders.getFee();
        this.orderId=orders.getOrderId();
        this.date=orders.getDate();
        this.total=orders.getTotal();
        this.status=orders.getStatus();


    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
