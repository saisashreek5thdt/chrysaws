package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.userDTO;
import com.chrysaellect.meet.model.resources;
import com.chrysaellect.meet.model.user;
import com.chrysaellect.meet.repository.usersRepository;
import com.chrysaellect.meet.service.userService;

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
public class userServiceImpl implements userService {
    @Autowired
    private usersRepository userRepository;
    @Autowired
    private JavaMailSender mailSender;
    @Override
    public List<userDTO> getAllUser() {
        List<user> list = userRepository.findAll();
        List<userDTO> userList = list.stream()
                .map(userDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return userList;
    }

    @Override
    public void last(String email, String date) {
        user us=userRepository.findByemail(email);
        us.setLastlogin(date);
    }

    @Override
    public void check(String email, String code) {
        user us=userRepository.findByemail(email);
        if(us.getCode().equals(code)) {
            us.setStatus("1");
            us.setVerified("1");
            userRepository.save(us);
        }

    }

    @Override
    public user findByemail(String email) {
        user us=userRepository.findByemail(email);
        return us;
    }


    @Override
    public void makeVerified( String email ,String id) {
       user us=userRepository.findByemail(email);
if(us.getCode().equals(id)) {
    us.setStatus("1");
    us.setVerified("1");
    userRepository.save(us);
}

    }

    @Override
    public void createUser(String fname, String lname, String regemail, String regpassword,String code) throws UnsupportedEncodingException, MessagingException {
  verify(fname,regemail,code);

        user us=convertDtoToModel(fname,lname,regemail,regpassword,code);
        userRepository.save(us);
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

    private user convertDtoToModel(String fname, String lname, String regemail, String regpassword,String code ){
        user us=new user();
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
