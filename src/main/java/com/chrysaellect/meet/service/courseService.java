package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.courseDTO;
import com.chrysaellect.meet.dto.resourceDTO;
import com.chrysaellect.meet.dto.resourcefilesDTO;
import com.chrysaellect.meet.model.course;

import java.util.List;

public interface courseService {
    public course findByid(Long id);
    public List<courseDTO> getAllcourses();
    public List<courseDTO> getAllValidCourses(String title);
    public  void edit(Long id,String title, String category, String amount, String about,String res_img ,String start, String end,String days);
    public  void createCourse(String title, String category, String amount, String about,String res_img ,String start, String end,String skills[],String days,String date);
    public void deletecourse(Long id);
}
