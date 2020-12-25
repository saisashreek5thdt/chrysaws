package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.resourcesincourse;

import javax.persistence.Column;

public class resourceincourseDTO {

    private Long id;

    private String coursename;

    private String resourceid;


    public resourceincourseDTO(){

    }

    public resourceincourseDTO(resourcesincourse resourceincourse){
        this.id=resourceincourse.getId();
        this.coursename=resourceincourse.getCoursename();
        this.resourceid=resourceincourse.getResourceid();

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

    public String getResourceid() {
        return resourceid;
    }

    public void setResourceid(String resourceid) {
        this.resourceid = resourceid;
    }
}
