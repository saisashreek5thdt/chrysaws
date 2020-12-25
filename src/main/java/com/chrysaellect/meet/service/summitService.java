package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.summitDTO;

import java.util.List;

public interface summitService {
    public List<summitDTO> getAllsummit();
    public void create(String title, String video , String date, String time);
    public void delete(Long id);
}
