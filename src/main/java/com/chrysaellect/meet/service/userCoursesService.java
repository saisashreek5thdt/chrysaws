package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.userCoursesDTO;
import com.chrysaellect.meet.dto.userDTO;
import com.chrysaellect.meet.model.user;
import com.chrysaellect.meet.model.userCourses;

import java.util.List;

public interface userCoursesService {
    public List<userCoursesDTO> getAlluserCourses();
    public void createUserCourse(String[] productName,String[] type, String category[], String image[],String user,String date);
}
