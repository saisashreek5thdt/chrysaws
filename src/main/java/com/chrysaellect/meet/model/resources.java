package com.chrysaellect.meet.model;

import javax.persistence.*;

@Entity
@Table(name = "resources")
public class resources {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "Resourcename")
    private String resourcename;

    @Column(name = "category")
    private String category;

    @Column(name = "amount")
    private String amount;

    @Column(name = "image")
    private String image;

    @Column(name = "about_resourse")
    private String about_resourse;

    @Column(name = "createdate")
    private String createdate;

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public Long getId() { return id; }

    public void setId(Long id) { this.id = id; }

    public String getResource_name() { return resourcename; }

    public void setResource_name(String resource_name) { resourcename = resource_name; }

    public String getCategory() { return category; }

    public void setCategory(String category) { this.category = category; }

    public String getAmount() { return amount; }

    public void setAmount(String amount) { this.amount = amount; }

    public String getImage() { return image; }

    public void setImage(String image) { this.image = image; }

    public String getAbout_resourse() { return about_resourse; }

    public void setAbout_resourse(String about_resourse) { this.about_resourse = about_resourse; }
}
