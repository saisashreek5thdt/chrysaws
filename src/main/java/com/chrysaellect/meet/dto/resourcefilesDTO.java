package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.resourcefiles;

import javax.persistence.Column;

public class resourcefilesDTO {

    private Long id;

    private String Resource_name;

    private String filename;
    private String category;
    private String filetype;
    private String title;
    public resourcefilesDTO(){}
    public resourcefilesDTO( resourcefiles resourcefiles){
        this.id=resourcefiles.getId();
        this.filename=resourcefiles.getFilename();
        this.Resource_name=resourcefiles.getResource_name();
        this.filetype=resourcefiles.getFiletype();
this.category=resourcefiles.getCategory();
this.title=resourcefiles.getTitle();

    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getResource_name() {
        return Resource_name;
    }

    public void setResource_name(String resource_name) {
        Resource_name = resource_name;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
