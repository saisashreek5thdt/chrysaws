package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.courseDTO;
import com.chrysaellect.meet.dto.resourceDTO;
import com.chrysaellect.meet.dto.resourceincourseDTO;

import java.util.List;

public interface resourcesincourseService {

    public List<resourceincourseDTO> getAllResourcesInCourse();
    public void createResource(String title,String resource[]);
    public void delete(String name);
}
