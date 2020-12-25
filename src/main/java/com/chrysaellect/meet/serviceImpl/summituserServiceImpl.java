package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.summituserDTO;
import com.chrysaellect.meet.dto.userDTO;
import com.chrysaellect.meet.model.summituser;
import com.chrysaellect.meet.model.user;
import com.chrysaellect.meet.repository.summituserRepository;
import com.chrysaellect.meet.service.summituserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class summituserServiceImpl implements summituserService {
    @Autowired
    private summituserRepository summituserRepository;
    @Autowired
    private JavaMailSender mailSender;
    @Override
    public List<summituserDTO> getAllsummituser() {
        List<summituser> list = summituserRepository.findAll();
        List<summituserDTO> summituserList = list.stream()
                .map(summituserDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return summituserList;
    }


    @Override
    public void check(String email, String code) {
        summituser us=summituserRepository.findByemail(email);
        if(us.getCode().equals(code)) {
            us.setStatus("1");
            us.setVerified("1");
            summituserRepository.save(us);
        }

    }

    @Override
    public summituser findByemail(String email) {
        summituser summituser=summituserRepository.findByemail(email);
        return summituser;
    }


    @Override
    public void makeVerified( String email ,String id) {
        summituser us=summituserRepository.findByemail(email);
        if(us.getCode().equals(id)) {
            us.setStatus("1");
            us.setVerified("1");
            summituserRepository.save(us);
        }

    }

    @Override
    public void createUser(String fname, String lname, String regemail, String regpassword,String code) throws UnsupportedEncodingException, MessagingException {
        verify(fname,regemail,code);

        summituser us=convertDtoToModel(fname,lname,regemail,regpassword,code);
        summituserRepository.save(us);
    }

    private void verify(String fname,String regemail,String code) throws UnsupportedEncodingException, MessagingException {

        String sub="Welcome "+fname;
        String team="chrysaellect ";

        //String[] cars = {regemail, "mweon007@gmail.com"};
        String content="your code is "+code;
        MimeMessage msg=mailSender.createMimeMessage();
        MimeMessageHelper helper=new MimeMessageHelper(msg);
        helper.setFrom("mweon007@gmail.com",team);
        helper.setTo(regemail);
        helper.setSubject(sub);
        // helper.setText(content);
        msg.setContent("<h1>Your Verification Code Is <font color='green'><big>"+code+"</big></font> </h1><br><h3> Thanks <b> Chrysaellect Team</b>  </h3><br><br><a href='http://localhost:8080/valuser?id="+code+"&email="+regemail+"'>click here</a>", "text/html");

        mailSender.send(msg);

    }

    private summituser convertDtoToModel(String fname, String lname, String regemail, String regpassword,String code ){
        summituser us=new summituser();
        us.setFirstname(fname);
        us.setLastname(lname);
        us.setEmail(regemail);
        us.setPassword(regpassword);
        us.setActive("0");
        us.setStatus("0");
        us.setVerified("0");
        us.setCode(code);

        return us;

    }






}




