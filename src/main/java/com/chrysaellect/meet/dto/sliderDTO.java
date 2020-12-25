package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.slider;

import javax.persistence.Column;

public class sliderDTO {
    private Long id;

    private String slider;

    private String type;

    private String category;

    private String caption;

    private String coupen;


    private String title;

    public sliderDTO(){

    }

    public sliderDTO(com.chrysaellect.meet.model.slider slider){
this.id=slider.getId();
this.slider=slider.getSlider();
this.caption=slider.getCaption();
this.category=slider.getCategory();
this.type=slider.getType();
this.coupen=slider.getCoupen();
this.title=slider.getTitle();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSlider() {
        return slider;
    }

    public void setSlider(String slider) {
        this.slider = slider;
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

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public String getCoupen() {
        return coupen;
    }

    public void setCoupen(String coupen) {
        this.coupen = coupen;
    }
}
