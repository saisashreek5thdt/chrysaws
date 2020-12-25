package com.chrysaellect.meet.service;



import com.chrysaellect.meet.dto.userDTO;
import com.chrysaellect.meet.model.user;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;
import java.util.List;

public interface userService {
    public List<userDTO> getAllUser();
    public void last(String email,String date);
    public void check(String email,String code);
    public user findByemail(String email);
    public void makeVerified(String email,String id);
    public void createUser(String fname,String lname, String regemail, String regpassword,String code) throws UnsupportedEncodingException, MessagingException;
}
