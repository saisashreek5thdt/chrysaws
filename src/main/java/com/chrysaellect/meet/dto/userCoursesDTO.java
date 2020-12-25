package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.userCourses;

import javax.persistence.Column;

public class userCoursesDTO {

    private Long id;

    private String name;

    private String type;

    private String category;

    private String image;

    private String user;

    private String date;


    public userCoursesDTO(){

    }
    public userCoursesDTO(userCourses userCourses){
        this.id=userCourses.getId();
        this.name=userCourses.getName();
        this.type=userCourses.getType();
        this.category=userCourses.getCategory();
        this.image=userCourses.getImage();
        this.user=userCourses.getUser();
        this.date=userCourses.getDate();


    }

    public Long getId() {
        return id;
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

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
