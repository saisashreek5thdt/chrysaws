package com.chrysaellect.meet.model;

import javax.persistence.*;

@Entity
@Table(name = "slider")
public class slider {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "slider")
    private String slider;

    @Column(name = "type")
    private String type;
    @Column(name = "category")
    private String category;
    @Column(name = "caption")
    private String caption;
    @Column(name = "coupen")
    private String coupen;
    @Column(name = "title")
    private String title;


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
