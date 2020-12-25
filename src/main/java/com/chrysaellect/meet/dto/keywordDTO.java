package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.keyword;

import javax.persistence.Column;

public class keywordDTO {

    private Long id;

    private String keyword;

    private String type;

    private String name;
    public keywordDTO(){}

    public keywordDTO(keyword keyword){
        this.id=keyword.getId();
        this.keyword=keyword.getKeyword();
        this.name=keyword.getName();
        this.type=keyword.getType();


    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
