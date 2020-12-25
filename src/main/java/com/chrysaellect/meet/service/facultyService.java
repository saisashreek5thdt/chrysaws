package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.facultyDTO;
import com.chrysaellect.meet.dto.keywordDTO;
import com.chrysaellect.meet.model.faculty;

import java.util.List;

public interface facultyService {

    public List<facultyDTO> getAllfaculty();
    public faculty findByid(Long id);
    public void deleteitem(Long id);
    public void createFaculty(String title,String res_imgc,String firstname,String lastname,String about);
}
