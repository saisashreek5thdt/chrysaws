package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.userCoursesDTO;
import com.chrysaellect.meet.dto.userDTO;
import com.chrysaellect.meet.model.cart;
import com.chrysaellect.meet.model.user;
import com.chrysaellect.meet.model.userCourses;
import com.chrysaellect.meet.repository.userCoursesRepository;
import com.chrysaellect.meet.service.userCoursesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class userCoursesServiceImpl implements userCoursesService {
    @Autowired
    private com.chrysaellect.meet.repository.userCoursesRepository userCoursesRepository;
    @Override
    public List<userCoursesDTO> getAlluserCourses() {
        List<userCourses> list = userCoursesRepository.findAll();
        List<userCoursesDTO> userCoursesList = list.stream()
                .map(userCoursesDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return userCoursesList;
    }

    @Override
    public void createUserCourse(String[] productName, String[]type, String[] category, String[] image, String user,String date) {
      for(int i=0; i<productName.length;i++) {

          userCourses uc = convertDtoToModel(productName[i], type[i], category[i], image[i], user, date);
          userCoursesRepository.save(uc);
      }
    }

    private userCourses convertDtoToModel(String productName, String type, String category, String image, String user,String date){
        userCourses uc=new userCourses();
      uc.setName(productName);
      uc.setType(type);
      uc.setCategory(category);
      uc.setImage(image);
      uc.setUser(user);
      uc.setDate(date);
        return uc;
    }

}
