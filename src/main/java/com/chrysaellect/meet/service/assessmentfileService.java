package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.assessmentDTO;
import com.chrysaellect.meet.dto.assessmentfileDTO;

import java.util.List;

public interface assessmentfileService {
    public List<assessmentfileDTO> getAll();
    public  void createAssessment(String user, String userid, String file,String file2 );

}
