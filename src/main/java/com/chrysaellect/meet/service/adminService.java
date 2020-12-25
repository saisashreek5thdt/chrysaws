package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.adminDTO;

import java.util.List;

public interface adminService {
    public List<adminDTO> getAlladmin();

    public void createOrUpdateAdmin(String fname,String lname, String regemail, String regpassword, String access[]);

    public void deleteadmin(Long id);
}
