package com.chrysaellect.meet.model;

import javax.persistence.*;

@Entity
@Table(name = "Admin")
public class admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "status")
    private String status;

    @Column(name = "slider")
    private String slider;

    @Column(name = "resources")
    private String resources;

    @Column(name = "course")
    private String course;

    @Column(name = "summit")
    private String summit;

    @Column(name = "blogs")
    private String blogs;

    @Column(name = "faculty")
    private String faculty;

    @Column(name = "meassage_center")
    private String meassage_center;

    @Column(name = "mail")
    private String mail;


    @Column(name = "first_name")
    private String first_name;


    @Column(name = "last_name")
    private String last_name;

    @Column(name = "access_control")
    private String access_control;


    @Column(name = "e_certificate")
    private String e_certificate;


    @Column(name = "date")
    private String date;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public String getStatus() { return status; }

    public void setStatus(String status) {this.status = status; }

    public String getSlider() { return slider; }

    public void setSlider(String slider) { this.slider = slider; }

    public String getResources() { return resources; }

    public void setResources(String resources) { this.resources = resources; }

    public String getCourse() { return course; }

    public void setCourse(String course) { this.course = course; }

    public String getSummit() { return summit; }

    public void setSummit(String summit) { this.summit = summit; }

    public String getBlogs() { return blogs; }

    public void setBlogs(String blogs) { this.blogs = blogs; }

    public String getFaculty() { return faculty; }

    public void setFaculty(String faculty) { this.faculty = faculty; }

    public String getMeassage_center() { return meassage_center; }

    public void setMeassage_center(String meassage_center) { this.meassage_center = meassage_center; }

    public String getMail() { return mail; }

    public void setMail(String mail) { this.mail = mail; }

    public String getFirst_name() { return first_name; }

    public void setFirst_name(String first_name) { this.first_name = first_name; }

    public String getLast_name() { return last_name; }

    public void setLast_name(String last_name) { this.last_name = last_name; }

    public String getAccess_control() { return access_control; }

    public void setAccess_control(String access_control) { this.access_control = access_control; }

    public String getE_certificate() { return e_certificate; }

    public void setE_certificate(String e_certificate) { this.e_certificate = e_certificate; }

    public String getDate() { return date; }

    public void setDate(String date) { this.date = date; }
}
