package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.blogs;

import javax.persistence.Column;

public class blogsDTO {
    private Long id;

    private String title;

    private String cover;

    private String image1;

    private String image2;

    private String about1;

    private String about2;

    private String author;

    private String author_details;

    private String author_image;

    private String author_id;

    private String publish;

    private String view;
    public  blogsDTO(){

    }

    public blogsDTO(blogs blogs){

        this.id=blogs.getId();
        this.about1=blogs.getAbout1();
        this.about2=blogs.getAbout2();
        this.author=blogs.getAuthor();
        this.author_details=blogs.getAuthor_details();
        this.author_id=blogs.getAuthor_id();
        this.author_image=blogs.getAuthor_image();
        this.cover=blogs.getCover();
        this.image1=blogs.getImage1();
        this.image2=blogs.getImage2();
        this.publish=blogs.getPublish();
        this.title=blogs.getTitle();
        this.view=blogs.getView();
    }

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
