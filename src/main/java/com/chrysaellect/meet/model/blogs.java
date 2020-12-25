package com.chrysaellect.meet.model;

import javax.persistence.*;

@Entity
@Table(name = "blogs")
public class blogs {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "title")
    private String title;

    @Column(name = "cover")
    private String cover;

    @Column(name = "image1")
    private String image1;

    @Column(name = "image2")
    private String image2;


    @Column(name = "about1")
    private String about1;

    @Column(name = "about2")
    private String about2;

    @Column(name = "author")
    private String author;

    @Column(name = "author_details")
    private String author_details;

    @Column(name = "author_image")
    private String author_image;


    @Column(name = "author_id")
    private String author_id;


    @Column(name = "publish")
    private String publish;


    @Column(name = "view")
    private String view;


    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getAbout1() {
        return about1;
    }

    public void setAbout1(String about1) {
        this.about1 = about1;
    }

    public String getAbout2() {
        return about2;
    }

    public void setAbout2(String about2) {
        this.about2 = about2;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getAuthor_details() {
        return author_details;
    }

    public void setAuthor_details(String author_details) {
        this.author_details = author_details;
    }

    public String getAuthor_image() {
        return author_image;
    }

    public void setAuthor_image(String author_image) {
        this.author_image = author_image;
    }

    public String getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(String author_id) {
        this.author_id = author_id;
    }

    public String getPublish() {
        return publish;
    }

    public void setPublish(String publish) {
        this.publish = publish;
    }
}
