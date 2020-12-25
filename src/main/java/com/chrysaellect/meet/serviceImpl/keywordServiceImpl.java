package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.keywordDTO;
import com.chrysaellect.meet.dto.resourcefilesDTO;
import com.chrysaellect.meet.model.keyword;
import com.chrysaellect.meet.model.resourcefiles;
import com.chrysaellect.meet.model.resources;
import com.chrysaellect.meet.repository.keywordRepository;
import com.chrysaellect.meet.repository.resourcefilesRepository;
import com.chrysaellect.meet.service.keywordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class keywordServiceImpl implements keywordService {
    @Autowired
    private keywordRepository keywordRepository;
    @Override
    public List<keywordDTO> getAllkeywords() {
        List<keyword> list = keywordRepository.findAll();
        List<keywordDTO> keywordList = list.stream()
                .map(keywordDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return keywordList;
    }

    @Override
    public void createKeyword(String title, String[] keyword, String keywordtype) {
        for(String s : keyword) {
            if(s != null && s.length() > 0) {
                keyword key = convertDtoToModel(title, keywordtype, s);
                keywordRepository.save(key);
            }
        }

    }

    private keyword convertDtoToModel(String title, String keywordtype, String  keyword){
        keyword key=new keyword();

           key.setKeyword(keyword);
           key.setName(title);
           key.setType(keywordtype);
        return key;
    }

}
