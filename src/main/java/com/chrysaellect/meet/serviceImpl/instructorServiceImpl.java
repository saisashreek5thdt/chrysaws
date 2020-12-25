package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.instructorDTO;
import com.chrysaellect.meet.dto.keywordDTO;
import com.chrysaellect.meet.model.instructor;
import com.chrysaellect.meet.model.keyword;
import com.chrysaellect.meet.model.resourcesincourse;
import com.chrysaellect.meet.repository.instructorRepository;
import com.chrysaellect.meet.service.instructorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class instructorServiceImpl implements instructorService {
    @Autowired
    private com.chrysaellect.meet.repository.instructorRepository instructorRepository;


    @Override
    public List<instructorDTO> getAllData() {
        List<instructor> list = instructorRepository.findAll();
        List<instructorDTO> keywordList = list.stream()
                .map(instructorDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return keywordList;
    }

    @Override
    public void createResource(String[] name, String resource) {

        for(String s : name) {
            if(s != null && s.length() > 0) {
                instructor in = convertDtoToModel(s, resource);
                instructorRepository.save(in);
            }
        }

    }

    private instructor convertDtoToModel(String name, String  resource){
        instructor in=new instructor();
in.setName(name);
in.setResource(resource);
        return in;
    }
}
