package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.facultyDTO;
import com.chrysaellect.meet.dto.resourceincourseDTO;
import com.chrysaellect.meet.model.faculty;
import com.chrysaellect.meet.model.keyword;
import com.chrysaellect.meet.model.resourcesincourse;
import com.chrysaellect.meet.repository.facultyRepository;
import com.chrysaellect.meet.repository.resourceincourseRepository;
import com.chrysaellect.meet.service.facultyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class facultyServiceImpl implements facultyService {
    @Autowired
    private com.chrysaellect.meet.repository.facultyRepository facultyRepository;
    @Override
    public List<facultyDTO> getAllfaculty() {
        List<faculty> list = facultyRepository.findAll();
        List<facultyDTO> facultyList = list.stream()
                .map(facultyDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return facultyList;
    }

    @Override
    public faculty findByid(Long id) {
        faculty fa= facultyRepository.findByid(id);
        return fa;
    }

    @Override
    public void deleteitem(Long id) {
        facultyRepository.deleteById(id);
    }


    @Override
    public void createFaculty(String title, String res_imgc, String firstname, String lastname, String about) {
        faculty fac = convertDtoToModel(title, res_imgc, firstname,lastname,about);
        facultyRepository.save(fac);
    }

    private faculty convertDtoToModel(String title, String res_imgc, String  firstname, String lastname, String about){
        faculty fac=new faculty();

       fac.setAbout(about);
       fac.setFirstname(firstname);
       fac.setImage(res_imgc);
       fac.setLastname(lastname);
       fac.setTitle(title);
        return fac;
    }
}
