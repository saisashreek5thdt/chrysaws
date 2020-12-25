package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.keywordDTO;
import com.chrysaellect.meet.dto.resourcefilesDTO;

import java.util.List;

public interface keywordService {
    public List<keywordDTO> getAllkeywords();
    public void createKeyword(String title,String keyword[],String keywordtype);
}
