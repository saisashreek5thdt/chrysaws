package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.instructor;

import javax.persistence.Column;

public class instructorDTO {

    private Long id;

    private String name;

    private String resource;
    public  instructorDTO(){

    }


    public instructorDTO(instructor instructor  ){
        this.id=instructor.getId();
        this.name=instructor.getName();
        this.resource=instructor.getResource();


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

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }
}
