package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.instructorDTO;
import com.chrysaellect.meet.dto.keywordDTO;

import java.util.List;

public interface instructorService {

    public List<instructorDTO> getAllData();
    public void createResource(String name[],String resource);
}
