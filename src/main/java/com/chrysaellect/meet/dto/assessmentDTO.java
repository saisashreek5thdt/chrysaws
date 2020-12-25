package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.assessment;

import javax.persistence.Column;

public class assessmentDTO {
    private Long id;

    private String title;

    private String course;

    private String file;
    private String type;
    public assessmentDTO(){

    }

    public assessmentDTO(assessment assessment){
        this.id=assessment.getId();
        this.file=assessment.getFile();
        this.title=assessment.getTitle();
        this.course=assessment.getCourse();
this.type=assessment.getType();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }
}
