package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.resourceDTO;
import com.chrysaellect.meet.dto.resourcefilesDTO;
import com.chrysaellect.meet.model.resourcefiles;
import com.chrysaellect.meet.model.resources;
import com.chrysaellect.meet.repository.resourcefilesRepository;
import com.chrysaellect.meet.service.resourcefilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class resourcefilesServiceImpl implements resourcefilesService {
    @Autowired
    private resourcefilesRepository resourcefilesRepository;
    @Override
    public List<resourcefilesDTO> getAllfiles() {
        List<resourcefiles> list = resourcefilesRepository.findAll();
        List<resourcefilesDTO> resourcefilesList = list.stream()
                .map(resourcefilesDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return resourcefilesList;
    }

    @Override
    public void createResourceFiles(String title, String filetype, String res_imgs,String tit,String cate) {
        resourcefiles res=convertDtoToModel(title,filetype,res_imgs,tit,cate);
        resourcefilesRepository.save(res);
    }


    private resourcefiles convertDtoToModel(String title, String filetype, String res_imgs ,String tit,String cate){
        resourcefiles res=new resourcefiles();
        res.setResource_name(title);
        res.setFilename(res_imgs);
        res.setFiletype(filetype);
        res.setCategory(cate);
        res.setTitle(tit);
        return res;

    }

}
