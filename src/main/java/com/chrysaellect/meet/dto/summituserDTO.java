package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.summituser;

public class summituserDTO {

    private Long id;

    private String firstname;

    private String lastname;

    private String email;

    private String password;

    private String status;

    private String active;

    private String verified;

    private String code;
 public   summituserDTO(){

 }

    public   summituserDTO(summituser summituser){
        this.id=summituser.getId();
        this.firstname=summituser.getFirstname();
        this.lastname=summituser.getLastname();
        this.email=summituser.getEmail();
        this.status=summituser.getStatus();
        this.active=summituser.getActive();
        this.password=summituser.getPassword();
        this.verified=summituser.getVerified();
        this.code=summituser.getCode();
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
