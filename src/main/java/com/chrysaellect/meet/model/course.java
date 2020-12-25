package com.chrysaellect.meet.model;

import javax.persistence.*;

@Entity
@Table(name = "course")
public class course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "course_name")
    private String coursename;

    @Column(name = "category")
    private String category;

    @Column(name = "amount")
    private String amount;

    @Column(name = "image")
    private String image;

    @Column(name = "about_course")
    private String about_course;

    @Column(name = "start")
    private String start;

    @Column(name = "end")
    private String end;

    @Column(name = "createdate")
    private String createdate;
    @Column(name = "skill1")
    private String skill1;

    @Column(name = "skill2")
    private String skill2;

    @Column(name = "skill3")
    private String skill3;

    @Column(name = "skill4")
    private String skill4;
    @Column(name = "days")
    private String days;

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getSkill1() {
        return skill1;
    }

    public void setSkill1(String skill1) {
        this.skill1 = skill1;
    }

    public String getSkill2() {
        return skill2;
    }

    public void setSkill2(String skill2) {
        this.skill2 = skill2;
    }

    public String getSkill3() {
        return skill3;
    }

    public void setSkill3(String skill3) {
        this.skill3 = skill3;
    }

    public String getSkill4() {
        return skill4;
    }

    public void setSkill4(String skill4) {
        this.skill4 = skill4;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public String getCourse_name() {
        return coursename;
    }

    public void setCourse_name(String course_name) {
        this.coursename = course_name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAbout_course() {
        return about_course;
    }

    public void setAbout_course(String about_course) {
        this.about_course = about_course;
    }
}
