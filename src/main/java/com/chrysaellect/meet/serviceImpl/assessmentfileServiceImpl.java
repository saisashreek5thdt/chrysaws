package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.assessmentDTO;
import com.chrysaellect.meet.dto.assessmentfileDTO;
import com.chrysaellect.meet.model.assessment;
import com.chrysaellect.meet.model.assessmentfile;
import com.chrysaellect.meet.repository.assessmentfileRepository;
import com.chrysaellect.meet.service.assessmentfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class assessmentfileServiceImpl implements assessmentfileService {
@Autowired
private assessmentfileRepository  assessmentfileRepository;
    @Override
    public List<assessmentfileDTO> getAll() {
        List<assessmentfile> list = assessmentfileRepository.findAll();
        List<assessmentfileDTO> assessmentlist = list.stream()
                .map(assessmentfileDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return assessmentlist;

    }

    @Override
    public void createAssessment(String user, String userid, String file,String file2) {
        assessmentfile as=convertDtoToModel(user,userid,file,file2);
        assessmentfileRepository.save(as);
    }

    private assessmentfile convertDtoToModel(String user, String userid, String file,String file2 ){
        assessmentfile as=new assessmentfile();
        as.setUser(user);
        as.setUserid(userid);
        as.setFile(file);
        as.setFile2(file2);
        return as;
    }
}
