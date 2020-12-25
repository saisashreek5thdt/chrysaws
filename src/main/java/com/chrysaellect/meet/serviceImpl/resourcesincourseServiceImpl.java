package com.chrysaellect.meet.serviceImpl;


import com.chrysaellect.meet.dto.resourceincourseDTO;

import com.chrysaellect.meet.model.resourcesincourse;

import com.chrysaellect.meet.repository.resourceincourseRepository;
import com.chrysaellect.meet.service.resourcesincourseService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class resourcesincourseServiceImpl implements resourcesincourseService {
    @Autowired
    private resourceincourseRepository resourceincourseRepository;
    @Override
    public List<resourceincourseDTO> getAllResourcesInCourse() {
        List<resourcesincourse> list = resourceincourseRepository.findAll();
        List<resourceincourseDTO> resourceincourseList = list.stream()
                .map(resourceincourseDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return resourceincourseList;
    }

    @Override
    public void createResource(String title, String[] resource) {
        for(String s : resource) {
            if(s != null && s.length() > 0) {
                resourcesincourse res = convertDtoToModel(title, s);
                resourceincourseRepository.save(res);
            }
        }
    }

    @Override

    @Transactional
    public void delete(String name) {
        long deletedRecords= resourceincourseRepository.deleteAllByresourceid(name);

    }

    private resourcesincourse convertDtoToModel(String title, String  resource){
        resourcesincourse res=new resourcesincourse();

        res.setCoursename(title);
        res.setResourceid(resource);
        return res;
    }
}
