package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.adminDTO;
import com.chrysaellect.meet.dto.courseDTO;
import com.chrysaellect.meet.dto.resourcefilesDTO;

import java.util.List;

public interface resourcefilesService {
    public List<resourcefilesDTO> getAllfiles();
    public void createResourceFiles(String title,String filetype,String res_imgs,String tit,String cate);

}
