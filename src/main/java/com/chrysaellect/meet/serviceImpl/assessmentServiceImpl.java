package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.assessmentDTO;
import com.chrysaellect.meet.dto.blogsDTO;
import com.chrysaellect.meet.model.assessment;
import com.chrysaellect.meet.model.blogs;
import com.chrysaellect.meet.repository.assessmentRepository;
import com.chrysaellect.meet.service.assessmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class assessmentServiceImpl implements assessmentService {
    @Autowired
    private assessmentRepository  assessmentRepository;
    @Override
    public List<assessmentDTO> getAll() {
        List<assessment> list = assessmentRepository.findAll();
        List<assessmentDTO> assessmentlist = list.stream()
                .map(assessmentDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return assessmentlist;
    }

    @Override
    public void createAssessment(String title, String resimg, String course,String type) {
        assessment as=convertDtoToModel(title,resimg,course,type);
        assessmentRepository.save(as);
    }
    private assessment convertDtoToModel(String title, String resimg, String course,String type){
        assessment as=new assessment();
      as.setCourse(course);
      as.setFile(resimg);
      as.setTitle(title);
as.setType(type);
        return as;
    }
}
