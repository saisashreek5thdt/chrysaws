package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.assessmentDTO;
import com.chrysaellect.meet.dto.blogsDTO;

import java.util.List;

public interface assessmentService {

    public List<assessmentDTO> getAll();
    public  void createAssessment(String title, String resimg, String course,String type);

}
