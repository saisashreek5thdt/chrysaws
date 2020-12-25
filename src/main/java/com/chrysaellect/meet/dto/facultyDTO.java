package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.faculty;

import javax.persistence.Column;

public class facultyDTO {

    private Long id;

    private String title;

    private String firstname;

    private String lastname;

    private String image;

    private String about;


    public facultyDTO(){

    }

    public facultyDTO(faculty faculty){
        this.id=faculty.getId();
        this.about=faculty.getAbout();
        this.firstname=faculty.getFirstname();
                this.image=faculty.getImage();
        this.lastname=faculty.getLastname();
        this.title=faculty.getTitle();

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

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }
}
