package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.course;
import com.chrysaellect.meet.model.resourcefiles;

public class courseDTO {
    private Long id;
    private String days;
    private String coursename;
    private String category;
    private String amount;
    private String image;
    private String about_course;
private String start;
private String end;
private String skill1;
    private String skill2;
    private String skill3;
    private String  skill4;

    private String createdate;
    public courseDTO() {
    }

    public courseDTO(course course) {
      this.id=course.getId();
      this.createdate=course.getCreatedate();
      this.coursename=course.getCourse_name();
      this.amount=course.getAmount();
      this.about_course=course.getAbout_course();
      this.image=course.getImage();
      this.category=course.getCategory();
      this.start=course.getStart();
      this.end=course.getEnd();
      this.skill1= course.getSkill1();
      this.skill2=course.getSkill2();
      this.skill3=course.getSkill3();
      this.skill4=course.getSkill4();
      this.days=course.getDays();

    }

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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
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