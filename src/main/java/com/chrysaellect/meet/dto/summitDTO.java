package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.summit;

import javax.persistence.Column;

public class summitDTO {
    private Long id;

    private String title;

    private String video;

    private String date;

    private String time;


    public summitDTO(){


    }

    public summitDTO(summit summit){
        this.id=summit.getId();
        this.video=summit.getVideo();
        this.date=summit.getDate();
        this.title=summit.getTitle();
        this.time=summit.getTime();


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

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
