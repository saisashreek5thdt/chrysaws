package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.cart;

import javax.persistence.Column;

public class cartDTO {
    private Long id;

    private String name;

    private String type;

    private String category;

    private String image;

    private String fee;

    private String user;

    private String status;
    private String checked;
    public cartDTO(){

    }

    public cartDTO(cart cart){
        this.id=cart.getId();
        this.name=cart.getName();
        this.type=cart.getType();
        this.category=cart.getCategory();
        this.image=cart.getImage();
        this.fee=cart.getFee();
        this.user=cart.getUser();
        this.status=cart.getStatus();
this.checked=cart.getChecked();
    }

    public Long getId() {
        return id;
    }

    public String getChecked() {
        return checked;
    }

    public void setChecked(String checked) {
        this.checked = checked;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
