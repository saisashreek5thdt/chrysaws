package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.sliderDTO;
import com.chrysaellect.meet.dto.userDTO;

import java.util.List;

public interface sliderService {

    public List<sliderDTO> getAllSlider();
    public void createSlider(String title, String category,String res_img, String caption,String coupen,String hc,String type);
}
