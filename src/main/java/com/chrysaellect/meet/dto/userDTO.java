package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.user;

import javax.persistence.Column;

public class userDTO {
    private Long id;

    private String firstname;

    private String lastname;

    private String email;

    private String password;

    private String status;

    private String active;

    private String verified;

    private String code;
    private String lastlogin;
    public userDTO(){

    }
    public userDTO(user user){
        this.id=user.getId();
        this.firstname=user.getFirstname();
        this.lastname=user.getLastname();
        this.email=user.getEmail();
        this.status=user.getStatus();
        this.active=user.getActive();
        this.password=user.getPassword();
        this.verified=user.getVerified();
        this.code=user.getCode();
this.lastname=user.getLastname();
    }

    public String getLastlogin() {
        return lastlogin;
    }

    public void setLastlogin(String lastlogin) {
        this.lastlogin = lastlogin;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    public String getVerified() {
        return verified;
    }

    public void setVerified(String verified) {
        this.verified = verified;
    }
}
