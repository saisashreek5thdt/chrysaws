package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.adminDTO;
import com.chrysaellect.meet.model.admin;
import com.chrysaellect.meet.repository.adminRepository;
import com.chrysaellect.meet.service.adminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class adminServiceImpl implements adminService {
    @Autowired
private adminRepository adminRepository;
    @Override
    public List<adminDTO> getAlladmin() {
        List<admin> list = adminRepository.findAll();
        List<adminDTO> adminList = list.stream()
                .map(adminDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return adminList;
    }

    @Override
    public void createOrUpdateAdmin(String fname, String lname, String regemail, String regpassword, String[] access) {
        String slider="0";
        String blogs="0";
        String status ="1";
        String resources="0";
        String course="0";
        String summit="0";
        String faculty="0";
        String msg="0";
        String accesscount="0";
        String e_cer="0";
        String mail="0";
        int acnt=0;
        for(int i=0; i<access.length; i++){
acnt=access.length;
            if(access[i].equals("all")){
                mail="1";   msg="1"; summit="1";     faculty="1";   resources="1";   course="1";
                slider="1";blogs="1";
                acnt=8;
            }
            if(access[i].equals("mail")){
                mail="1";
            }

            if(access[i].equals("message_center")){
                msg="1";
            }

            if(access[i].equals("summit")){
                summit="1";
            }
            if(access[i].equals("faculty")){
                faculty="1";
            }
            if(access[i].equals("resources")){
                resources="1";
            }
            if(access[i].equals("course")){
                course="1";
            }

            if(access[i].equals("slider")){
                slider="1";
            }
            if(access[i].equals("blogs")){
                blogs="1";
            }
        }
        accesscount=String.valueOf(acnt);
        DateFormat dateFormat = new SimpleDateFormat("MMMM dd yyyy");
        java.util.Date date = new java.util.Date();
      String dates= dateFormat.format(date);


      admin adm=convertDtoToModel(fname,lname,regemail,regpassword,slider,blogs,status,resources,course,summit,faculty,msg,accesscount,e_cer,dates, mail);
        adminRepository.save(adm);
    }

    @Override
    public void deleteadmin(Long id) {
adminRepository.deleteById(id);
    }


    private admin convertDtoToModel(String fname, String lname,String regemail,String regpassword,String slider,String blogs,String status,String resources,String course,String summit,String faculty,String msg,String accesscount,String e_cer,String dates,String mail)
    {
    admin adm=new admin();
    adm.setEmail(regemail);
    adm.setPassword(regpassword);
    adm.setFirst_name(fname);
    adm.setLast_name(lname);
    adm.setAccess_control(accesscount);
    adm.setBlogs(blogs);
    adm.setDate(dates);
    adm.setSlider(slider);
    adm.setSummit(summit);
    adm.setStatus(status);
    adm.setFaculty(faculty);
    adm.setMail(mail);
    adm.setE_certificate(e_cer);
    adm.setMeassage_center(msg);
    adm.setResources(resources);
    adm.setCourse(course);
return  adm;


}

}
