package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.resourceDTO;
import com.chrysaellect.meet.model.resources;

import java.util.List;

public interface resourceService {
    public List<resourceDTO> getAllResources();
    public List<resourceDTO> getAllValidResources( String title);
    public  void createResource(String title, String category, String amount, String about,String res_img,String date);
public resources findByid(Long id);
    public void deleteresource(Long id);
    public void editResource(String title,String category,String amount,String about,String res_img,Long id);
}
