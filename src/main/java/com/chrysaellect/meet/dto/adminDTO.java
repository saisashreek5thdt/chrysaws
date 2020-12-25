package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.admin;

import javax.persistence.Column;

public class adminDTO {
private long id;
private String email;
private String password;
private String status;
private String slider;
private String resources;
private String course;
private String summit;
 private String blogs;
private String faculty;
 private String meassage_center;
 private String mail;
private String first_name;
 private String last_name;
 private String access_control;
 private String e_certificate;
 private String date;

public adminDTO(){

}

    public adminDTO(admin admin) {
        this.id = admin.getId();
        this.email = admin.getEmail();
        this.password = admin.getPassword();
        this.status=admin.getStatus();
        this.slider=admin.getSlider();
        this.resources=admin.getResources();
        this.course=admin.getCourse();
        this.summit=admin.getSummit();
        this.blogs=admin.getBlogs();
        this.faculty=admin.getFaculty();
        this.meassage_center=admin.getMeassage_center();
        this.mail=admin.getMail();
        this.first_name=admin.getFirst_name();
        this.last_name=admin.getLast_name();
        this.access_control=admin.getAccess_control();
        this.e_certificate=admin.getE_certificate();
        this.date=admin.getDate();
}


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSlider() {
        return slider;
    }

    public void setSlider(String slider) {
        this.slider = slider;
    }

    public String getResources() {
        return resources;
    }

    public void setResources(String resources) {
        this.resources = resources;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getSummit() {
        return summit;
    }

    public void setSummit(String summit) {
        this.summit = summit;
    }

    public String getBlogs() {
        return blogs;
    }

    public void setBlogs(String blogs) {
        this.blogs = blogs;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public String getMeassage_center() {
        return meassage_center;
    }

    public void setMeassage_center(String meassage_center) {
        this.meassage_center = meassage_center;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getAccess_control() {
        return access_control;
    }

    public void setAccess_control(String access_control) {
        this.access_control = access_control;
    }

    public String getE_certificate() {
        return e_certificate;
    }

    public void setE_certificate(String e_certificate) {
        this.e_certificate = e_certificate;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public adminDTO(String email, String password, String status, String slider, String resources, String  course, String summit, String blogs, String faculty, String meassage_center, String mail,String first_name,String last_name, String access_control,String e_certificate,String date) {
        this.email = email;
        this.password = password;
        this.status=status;
        this.slider=slider;
        this.resources=resources;
        this.course=course;
        this.summit=summit;
        this.blogs=blogs;
        this.faculty=faculty;
        this.meassage_center=meassage_center;
        this.mail=mail;
        this.first_name=first_name;
        this.last_name=last_name;
        this.access_control=access_control;
        this.e_certificate=e_certificate;
        this.date=date;

    }
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
