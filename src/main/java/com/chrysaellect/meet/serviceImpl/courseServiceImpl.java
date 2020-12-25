package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.courseDTO;
import com.chrysaellect.meet.dto.resourceDTO;
import com.chrysaellect.meet.model.course;
import com.chrysaellect.meet.model.resources;
import com.chrysaellect.meet.repository.courseRepository;
import com.chrysaellect.meet.repository.resourcefilesRepository;
import com.chrysaellect.meet.service.courseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class courseServiceImpl implements courseService {
    @Autowired
    private courseRepository courseRepository;

    @Override
    public course findByid(Long id) {
        course cs  =courseRepository.findByid(id);
       return cs;
    }

    public List<courseDTO> getAllcourses() {
        List<course> list = courseRepository.findAll();
        List<courseDTO> courselist = list.stream()
                .map(courseDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return courselist;

    }

    @Override
    public List<courseDTO> getAllValidCourses(String title) {
        List<course> list = courseRepository.findBycoursename(title);
        List<courseDTO> courseLists = list.stream()
                .map(courseDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));


        return courseLists;
    }

    @Override
    public void edit(Long id,String title, String category, String amount, String about, String res_img, String start, String end,String days) {
       course cs=courseRepository.findByid(id);
       cs.setStart(start);
       cs.setEnd(end);
       cs.setCategory(category);
       cs.setAmount(amount);
       cs.setAbout_course(about);
       cs.setImage(res_img);
       cs.setDays(days);

    }

    @Override
    public void deletecourse(Long id) {
        courseRepository.deleteById(id);
    }

    @Override
    public void createCourse(String title, String category, String amount, String about,String res_img,String start,String end,String skills[],String days,String date) {

        course cor=convertDtoToModel(title,category,amount,about,res_img,start,end,skills,days,date);
        courseRepository.save(cor);

    }

    private course convertDtoToModel(String title, String category, String amount, String about,String res_img,String start,String end,String skills[],String days,String date ){
        course cor=new course();
  cor.setCourse_name(title);
  cor.setCategory(category);
  cor.setDays(days);
  cor.setAmount(amount);
  cor.setAbout_course(about);
  cor.setImage(res_img);
  cor.setStart(start);
  cor.setEnd(end);
  cor.setSkill1(skills[1]);
  cor.setSkill2(skills[2]);
  cor.setSkill3(skills[3]);
  cor.setSkill4(skills[0]);
        cor.setCreatedate(date);
        return cor;

    }


}
