package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.assessmentfile;

import javax.persistence.Column;

public class assessmentfileDTO {
    private Long id;

    private String user;

    private String userid;

    private String file;
    private String file2;
    public assessmentfileDTO(){

    }
    public assessmentfileDTO(assessmentfile assessmentfile) {
this.file=assessmentfile.getFile();
        this.file2=assessmentfile.getFile2();
this.id=assessmentfile.getId();
this.user=assessmentfile.getUser();
this.userid=assessmentfile.getUserid();
    }

    public Long getId() {
        return id;
    }

    public String getFile2() {
        return file2;
    }

    public void setFile2(String file2) {
        this.file2 = file2;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }
}
