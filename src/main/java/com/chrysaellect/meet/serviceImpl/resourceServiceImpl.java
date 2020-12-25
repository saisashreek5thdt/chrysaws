package com.chrysaellect.meet.serviceImpl;


import com.chrysaellect.meet.dto.adminDTO;
import com.chrysaellect.meet.dto.resourceDTO;

import com.chrysaellect.meet.model.resources;
import com.chrysaellect.meet.repository.resourceRepository;
import com.chrysaellect.meet.service.resourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class resourceServiceImpl implements resourceService {
    @Autowired
    private resourceRepository resourceRepository;
    @Override
    public List<resourceDTO> getAllResources() {
        List<resources> list = resourceRepository.findAll();
        List<resourceDTO> resourceList = list.stream()
                .map(resourceDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return resourceList;
    }

    @Override
    public List<resourceDTO> getAllValidResources(String title) {
        List<resources> list = resourceRepository.findByresourcename(title);
        List<resourceDTO> resourceLists = list.stream()
                .map(resourceDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return resourceLists;
    }

    @Override
    public void createResource(String title, String category, String amount, String about,String res_img,String date) {

        resources res=convertDtoToModel(title,category,amount,about,res_img,date);
        resourceRepository.save(res);

    }

    @Override
    public resources findByid(Long id) {
        resources rs=resourceRepository.findByid(id);
        return rs;
    }

    @Override
    public void deleteresource(Long id) {
        resourceRepository.deleteById(id);
    }

    @Override
    public void editResource(String title, String category, String amount, String about, String res_img, Long id) {
        resources rs=resourceRepository.findByid(id);
        rs.setCategory(category);
        rs.setResource_name(title);
        rs.setAmount(amount);
        rs.setAbout_resourse(about);
        rs.setImage(res_img);
    }

    private resources convertDtoToModel(String title, String category, String amount, String about,String res_img,String date ){
resources res=new resources();
    res.setResource_name(title);
    res.setCategory(category);
    res.setAmount(amount);
    res.setAbout_resourse(about);
    res.setImage(res_img);
    res.setCreatedate(date);
    return res;

    }

}
