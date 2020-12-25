package com.chrysaellect.meet.dto;

import com.chrysaellect.meet.model.resources;

import javax.persistence.Column;

public class resourceDTO {

 private Long id;
 private String resourcename;
 private String category;
 private String amount;
 private String image;
 private String about_resourse;

 private String createdate;
public resourceDTO(){ }


public resourceDTO(resources resource){

 this.id=resource.getId();
 this.resourcename=resource.getResource_name();
 this.category=resource.getCategory();
 this.amount=resource.getAmount();
 this.image=resource.getImage();
 this.about_resourse=resource.getAbout_resourse();
 this.createdate=resource.getCreatedate();

}

 public String getCreatedate() {
  return createdate;
 }

 public void setCreatedate(String createdate) {
  this.createdate = createdate;
 }

 public Long getId() { return id; }

 public void setId(Long id) { this.id = id; }

 public String getResource_name() { return resourcename; }

 public void setResource_name(String resource_name) { resourcename = resource_name; }

 public String getCategory() { return category; }

 public void setCategory(String category) { this.category = category; }

 public String getAmount() { return amount; }

 public void setAmount(String amount) { this.amount = amount; }

 public String getImage() { return image; }

 public void setImage(String image) { this.image = image; }

 public String getAbout_resourse() { return about_resourse; }

 public void setAbout_resourse(String about_resourse) { this.about_resourse = about_resourse; }
}
