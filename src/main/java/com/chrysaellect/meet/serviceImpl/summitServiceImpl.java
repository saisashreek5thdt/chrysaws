package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.summitDTO;
import com.chrysaellect.meet.model.summit;
import com.chrysaellect.meet.model.summituser;
import com.chrysaellect.meet.repository.summitRepository;
import com.chrysaellect.meet.service.summitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class summitServiceImpl implements summitService {
@Autowired
private summitRepository summitRepository;
    @Override
    public List<summitDTO> getAllsummit() {
        List<summit> list = summitRepository.findAll();
        List<summitDTO> summitList = list.stream()
                .map(summitDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return summitList;
    }

    @Override
    public void create(String title, String video, String date, String time) {

        summit us=convertDtoToModel(title,video,date,time);
        summitRepository.save(us);

    }

    @Override
    public void delete(Long id) {
        summitRepository.deleteById(id);
    }

    private summit convertDtoToModel(String title, String video, String date, String time  ){
        summit us=new summit();
      us.setTitle(title);
      us.setDate(date);
      us.setTime(time);
      us.setVideo(video);


        return us;

    }
}
