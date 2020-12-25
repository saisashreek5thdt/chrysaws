package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.sliderDTO;
import com.chrysaellect.meet.dto.userDTO;
import com.chrysaellect.meet.model.slider;
import com.chrysaellect.meet.model.user;
import com.chrysaellect.meet.repository.sliderRepository;
import com.chrysaellect.meet.repository.usersRepository;
import com.chrysaellect.meet.service.sliderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class sliderServiceimpl implements sliderService {
    @Autowired
    private com.chrysaellect.meet.repository.sliderRepository sliderRepository;
    @Override
    public List<sliderDTO> getAllSlider() {
        List<slider> list = sliderRepository.findAll();
        List<sliderDTO> sliderList = list.stream()
                .map(sliderDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return sliderList;
    }

    @Override
    public void createSlider(String title, String category, String res_img, String caption, String coupen,String hc,String type ) {


          if(category.equals("home") ){
               slider sx=sliderRepository.findBycategory(hc);
                sx.setSlider(res_img);
                sx.setType(type);
                sx.setTitle(title);
              sx.setCaption(caption);
              sx.setCoupen(coupen);

             sliderRepository.save(sx);

//
            }
else {
              slider sl = sliderRepository.findBycategory(category);
              sl.setSlider(res_img);
              sl.setTitle(title);
              sl.setCaption(caption);
              sl.setCoupen(coupen);
              sliderRepository.save(sl);
          }

    }
}
