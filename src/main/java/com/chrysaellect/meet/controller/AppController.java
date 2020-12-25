package com.chrysaellect.meet.controller;



import com.chrysaellect.meet.dto.*;
import com.chrysaellect.meet.model.*;
import com.chrysaellect.meet.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.concurrent.ThreadLocalRandom;

@Controller
public class AppController {
    public static String uploadDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads";
    public static String uploadVideoDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads/video";
    public static String uploadPptDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads/ppt";
    public static String uploadWordsDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads/word";
    public static String uploadPdfDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads/pdf";
    public static String uploadBlogsDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads/blogs";
    public static String uploadSliderDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads/slider";
    public static String uploadAssessmentDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads/assessments";
    public static String uploadSummitDirectory = System.getProperty("user.dir")+"/src/main/resources/static/assets/uploads/summit";

    @Autowired
    private adminService adminService;
    @Autowired
    private resourceService resourceService;
    @Autowired
    private keywordService keywordService;
    @Autowired
    private resourcesincourseService resourcesincourseService;
    @Autowired
    private assessmentService assessmentService;
    @Autowired
    private resourcefilesService resourcefilesService;
    @Autowired
    private cartService cartService;
    @Autowired
    private com.chrysaellect.meet.repository.resRepo resRepo;
    @Autowired
    private courseService courseService;
    @Autowired
    private instructorService instructorService;
    @Autowired
    private userService userService;
    @Autowired
    private sliderService sliderService;
    @Autowired
    private facultyService facultyService;
    @Autowired
    private blogsService blogsService;
    @Autowired
    private ordersService ordersService;
    @Autowired
    private userCoursesService userCoursesService;
    @Autowired
    private summitService summitService;
    @Autowired
    private summituserService summituserService;
    @Autowired
    private assessmentfileService assessmentfileService;

    @RequestMapping("/")
    public String index(Model model) {
        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);
        List<courseDTO> courseList = courseService.getAllcourses();

        model.addAttribute("courseList", courseList);
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime yesterday = LocalDateTime.now().minus(1, ChronoUnit.DAYS);
        String date=dtf.format(now);
        String yes=dtf.format(yesterday);
        model.addAttribute("today", date);
        model.addAttribute("yesterday", yes);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);
        List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();

        model.addAttribute("resourcefilesList", resourcefilesList);
        return "user/index";
    }

    @RequestMapping("/admin")
    public String listOfAdm(Model model) {
        List<adminDTO> adminList = adminService.getAlladmin();
        model.addAttribute("admList", adminList);

        return "admin/index";
    }

    @RequestMapping(value="/adminloginVal", method= RequestMethod.POST)
    public String adminlogin(Model model,@RequestParam (name="email")String emails ,@RequestParam (name="password")String password ) {
        List<adminDTO> adminList = adminService.getAlladmin();
        model.addAttribute("admList", adminList);
model.addAttribute("email",emails);
        model.addAttribute("password",password);

        return "admin/admlogval";
  }

    @RequestMapping("/dashboard")
    public String dash(Model model) {

        List<ordersDTO> orderList = ordersService.getAllorders();
        model.addAttribute("orderList", orderList);
        List<userCoursesDTO> csList = userCoursesService.getAlluserCourses();
        model.addAttribute("csList", csList);
        List<courseDTO> courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        List<courseDTO> cList = courseService.getAllcourses();
        model.addAttribute("cList", cList);

        return "admin/dashboard";
    }


    @RequestMapping("/payment")
    public String payment(Model model) {

        List<ordersDTO> orderList = ordersService.getAllorders();
        model.addAttribute("orderList", orderList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "admin/payment";
    }

    @RequestMapping("/publishblog")
    public String publishblog(Model model, @RequestParam (name="id")Long id ) {
blogsService.publish(id);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);

        return "admin/blog";
    }

    @RequestMapping("/disableblog")
    public String disableblog(Model model, @RequestParam (name="id")Long id ) {
        blogsService.disable(id);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);

        return "admin/blog";
    }


    @RequestMapping("/userdet")
    public String userdet(Model model) {

        List<ordersDTO> orderList = ordersService.getAllorders();
        model.addAttribute("orderList", orderList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "admin/userdt";
    }



    @RequestMapping("/adminreg")
    public String adminreg(
            Model model,
            @RequestParam (name="fname")String fname ,
            @RequestParam (name="lname")String lname ,
            @RequestParam (name="regemail")String regemail ,
            @RequestParam (name="regpassword")String regpassword ,
            @RequestParam (name="access")String access[]

    )
    {

adminService.createOrUpdateAdmin(fname,lname,regemail,regpassword,access);

        List<adminDTO> adminList = adminService.getAlladmin();
        model.addAttribute("admList", adminList);

        return "admin/access_control";
    }


    @RequestMapping("/signupval")
    public String signupval(
            Model model,
            @RequestParam (name="fname")String fname ,
            @RequestParam (name="lname")String lname ,
            @RequestParam (name="regemail")String regemail ,
            @RequestParam (name="regpassword")String regpassword


    ) throws UnsupportedEncodingException, MessagingException {
        user us=userService.findByemail(regemail);

        if(us!=null){
            model.addAttribute("regemail", regemail);
            model.addAttribute("password", regemail);
            model.addAttribute("error", "Account Exists..!");
            return "user/signup";
        }

            int cod = ThreadLocalRandom.current().nextInt(100000, 999999);
            String code = Integer.toString(cod);
            userService.createUser(fname, lname, regemail, regpassword, code);
            model.addAttribute("regemail", regemail);
            model.addAttribute("code", code);
            return "user/verify";

    }










   @RequestMapping("/summitsign")
    public String summitsign(
            Model model,
            @RequestParam (name="fname")String fname ,
            @RequestParam (name="lname")String lname ,
            @RequestParam (name="regemail")String regemail ,
            @RequestParam (name="regpassword")String regpassword


    ) throws UnsupportedEncodingException, MessagingException {
       summituser summituser=summituserService.findByemail(regemail);
       user user=userService.findByemail(regemail);
        if(summituser!=null){
            model.addAttribute("regemail", regemail);
            model.addAttribute("password", regemail);
            model.addAttribute("error", "Account Exists..!");
            return "user/summit/summit9";
        }
       if(user!=null) {
           model.addAttribute("regemail", regemail);
           model.addAttribute("password", regemail);
           model.addAttribute("error", "Account Exists..!");
           return "user/summit/summit9";
       }

           int cod = ThreadLocalRandom.current().nextInt(100000, 999999);
        String code = Integer.toString(cod);
        summituserService.createUser(fname, lname, regemail, regpassword, code);
        model.addAttribute("regemail", regemail);
        model.addAttribute("code", code);
        return "user/verify";

    }





  /*  @RequestMapping("/resend")
    public String resend(
            Model model,

            @RequestParam (name="regemail")String regemail ,



    ) throws UnsupportedEncodingException, MessagingException {


        int cod = ThreadLocalRandom.current().nextInt(100000, 999999);
        String code = Integer.toString(cod);
        userService.resend( regemail,  code);
        model.addAttribute("regemail", regemail);
        model.addAttribute("code", code);
        return "user/verify";

    }*/



    @RequestMapping("/valuser")
    public String valuser(Model model,@RequestParam("id") String id,@RequestParam("email") String email  ) {
        user us=userService.findByemail(email);
        if(!us.getCode().equals(id)){
            model.addAttribute("regemail", email);
            model.addAttribute("code", id);
            model.addAttribute("error", "Incorrect Code");
            return "user/verify";
        }
        if(us.getVerified().equals("1")){
            model.addAttribute("regemail", email);
            model.addAttribute("code", id);
            model.addAttribute("error", "Your Account Already Activated <br> <a href='/loginpage'>Click here to Log in</a>");
            return "user/verified";
        }
        else

        userService.makeVerified(email,id);
        return "user/log in";
    }


    @RequestMapping("/checkCode")
    public String checkCode(Model model,@RequestParam("code") String code,@RequestParam("regemail") String email  ) {

        user us=userService.findByemail(email);
        if(!us.getCode().equals(code)){
            model.addAttribute("regemail", email);
            model.addAttribute("code", code);
            model.addAttribute("error", "Incorrect Code");
            return "user/verify";
        }
       if(us.getVerified().equals("1")){
           model.addAttribute("regemail", email);
           model.addAttribute("code", code);
           model.addAttribute("error", "Your Account Already Activated <br> <a href='/loginpage'>Click here to Log in</a>");
           return "user/verified";
       }
       else
        userService.check(email,code);
        model.addAttribute("regemail", email);
        return "user/log in";
    }


    @RequestMapping("/userlogin")
    public String userlogin(Model model,@RequestParam("email") String email,@RequestParam("password") String password  ) {

        user us=userService.findByemail(email);

        if(us==null){
            model.addAttribute("regemail", email);
            model.addAttribute("password", password);
            model.addAttribute("error", "Account Not Exists..!");
            return "user/log in";
        }
        if(!us.getVerified().equals("1")){
            model.addAttribute("regemail", email);
            model.addAttribute("password", password);
            model.addAttribute("error", "Account Not Verified..Please check your mail");
            return "user/log in";
        }
        if(!us.getPassword().equals(password)){
            model.addAttribute("regemail", email);
            model.addAttribute("password", password);
            model.addAttribute("error", "Incorrect password");
            return "user/log in";

        }

        else



       model.addAttribute("regemail", us.getEmail());
        model.addAttribute("id", us.getId());
        List<cartDTO> cartList = cartService.getAllcarts();
        model.addAttribute("cartList", cartList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String date=dtf.format(now);
        userService.last(email,date);
        return "user/log";
    }


    @RequestMapping("/delete_admin")
    public String delete_admin(Model model,@RequestParam("id") String id ) {
        adminService.deleteadmin(Long.parseLong(id));
        List<adminDTO> adminList = adminService.getAlladmin();
        model.addAttribute("admList", adminList);
        return "admin/access_control";
    }

    @RequestMapping("/delete_course")
    public String delete_course(Model model,@RequestParam("id") String id ) {
        courseService.deletecourse(Long.parseLong(id));

        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);
        List<courseDTO> courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        return "admin/course";
    }



    /*@RequestMapping("/del")
    public String del(Model model,@RequestParam("name") String name ) {

        resourcesincourseService.delete(name);
return "user/index";
    }
*/


    @RequestMapping("/delete_resource")
    public String delete_resource(Model model,@RequestParam("id") String id,@RequestParam("name") String name ) {
        resourceService.deleteresource(Long.parseLong(id));
        resourcesincourseService.delete(name);
        List<resourceDTO> resourceList = resourceService.getAllResources();
        //resourcesincourseService.delete(name);
        model.addAttribute("resourceList", resourceList);

        List<facultyDTO> facList = facultyService.getAllfaculty();

        model.addAttribute("facList", facList);

        List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();

        model.addAttribute("resourcefilesList", resourcefilesList);
        return "admin/resources";
    }










    @RequestMapping("/createSliders")
    public String createSliders(Model model,
                               @RequestParam("file")  MultipartFile[] image,
                               @RequestParam("title") String title,
                               @RequestParam("caption") String caption,
                               @RequestParam("coupon") String coupon,
                               @RequestParam("category") String category,
                               @RequestParam("hc") String hc,
                               @RequestParam("az") String type



    ) {
        StringBuilder fileNamec= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadSliderDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNamec.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String res_imgc = fileNamec.toString();
        sliderService.createSlider(title,category,res_imgc,caption,coupon,hc,type);
        List<sliderDTO> sliderList = sliderService.getAllSlider();

        model.addAttribute("sliderList", sliderList);
        return "admin/slider";
    }







    @RequestMapping("/createAssessment")
    public String createAssessment(Model model,
                                @RequestParam("file")  MultipartFile[] image,
                                @RequestParam("title") String title,
                                @RequestParam("course") String course,
                                   @RequestParam("type") String type


    ) {
        StringBuilder fileNamec= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadAssessmentDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNamec.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String res_imgc = fileNamec.toString();
        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);
        List<courseDTO> courseList = courseService.getAllcourses();

        model.addAttribute("courseList", courseList);
assessmentService.createAssessment(title,res_imgc,course,type);
        return "admin/assesment";
    }







    @RequestMapping("/createAssessmentfile")
    public String createAssessmentfile(Model model,
                                   @RequestParam("image")  MultipartFile[] image,
                                   @RequestParam("user") String user,
                                   @RequestParam("userid") String userid,
                                       @RequestParam("file2") String file2



    ) {
        StringBuilder fileNamec= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadAssessmentDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNamec.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String res_imgc = fileNamec.toString();
        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);
        List<courseDTO> courseList = courseService.getAllcourses();

        model.addAttribute("courseList", courseList);
       assessmentfileService.createAssessment(user,userid,res_imgc,file2);
        List<userCoursesDTO> userCoursesList = userCoursesService.getAlluserCourses();
        model.addAttribute("userCoursesList", userCoursesList);

        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<resourceDTO > resourseList = resourceService.getAllResources();
        model.addAttribute("resourseList", resourseList);
        List<instructorDTO > instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<assessmentDTO > assessList = assessmentService.getAll();
        model.addAttribute("assessList", assessList);
        model.addAttribute("warn", "warn");
        return "user/user/index";
    }



    @RequestMapping("/createSummit")
    public String createSummit(Model model,
                                   @RequestParam("video")  MultipartFile[] image,
                                   @RequestParam("title") String title,
                                   @RequestParam("start") String start,
                                   @RequestParam("end") String end


    ) {
        StringBuilder fileNamec= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadSummitDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNamec.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String res_imgc = fileNamec.toString();
        List<summitDTO> summitList = summitService.getAllsummit();

        model.addAttribute("summitList", summitList);
        List<courseDTO> courseList = courseService.getAllcourses();

        model.addAttribute("courseList", courseList);
       summitService.create(title,res_imgc,start,end);
        return "admin/summit";
    }





    @RequestMapping("/createSlider")
    public String createSlider(Model model,
                                 @RequestParam("file")  MultipartFile[] image,
                                 @RequestParam("title") String title,
                                 @RequestParam("caption") String caption,
                                 @RequestParam("coupon") String coupon,
                                 @RequestParam("category") String category




    ) {
        StringBuilder fileNamec= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadSliderDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNamec.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String res_imgc = fileNamec.toString();
        String hc="";
        String type="";
        sliderService.createSlider(title,category,res_imgc,caption,coupon,hc,type);
        List<sliderDTO> sliderList = sliderService.getAllSlider();

        model.addAttribute("sliderList", sliderList);
        return "admin/slider";
    }

    @RequestMapping("/create_faculty")
    public String create_faculty(Model model,
                                @RequestParam("image")  MultipartFile[] image,
                                @RequestParam("title") String title,
                                @RequestParam("fname") String firstname,
                                @RequestParam("lname") String lastname,
                                @RequestParam("about") String about

    )
    {

        StringBuilder fileNamec= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNamec.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String res_imgc = fileNamec.toString();
        facultyService.createFaculty(title,res_imgc,firstname,lastname,about);

        List<facultyDTO> facList = facultyService.getAllfaculty();

        model.addAttribute("facList", facList);
        return "admin/faculty";
    }





    @RequestMapping("/blogCreate")
    public String blogCreate(Model model,
                                 @RequestParam("coverImage")  MultipartFile[] coverImage,
                                  @RequestParam("Image1")  MultipartFile[] Image1,
                                  @RequestParam("Image2")  MultipartFile[] Image2,
                             @RequestParam("authorImage")  MultipartFile[] authorImage,
                                 @RequestParam("title") String title,
                                 @RequestParam("des1") String des1,
                                 @RequestParam("des2") String des2,
                                 @RequestParam("authorName") String authorName,
                             @RequestParam("authorDesc") String authorDesc,
                             @RequestParam("authorId") String authorId

    )
    {

        StringBuilder fileNamec= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
       for (MultipartFile file : coverImage) {

            Path fileNameAndPath = Paths.get(uploadBlogsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNamec.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String cimg = fileNamec.toString();


        StringBuilder fileName= new StringBuilder();
        for (MultipartFile file : Image1) {

            Path fileNameAndPath = Paths.get(uploadBlogsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileName.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String img1 = fileName.toString();



        StringBuilder fileNam= new StringBuilder();
        for (MultipartFile file : Image2) {

            Path fileNameAndPath = Paths.get(uploadBlogsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String img2 = fileNam.toString();

        StringBuilder fileNa= new StringBuilder();
        for (MultipartFile file : authorImage) {

            Path fileNameAndPath = Paths.get(uploadBlogsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNa.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String authimg = fileNa.toString();
        blogsService.createBlog(title,cimg,img1,img2,authimg,des1,des2,authorName,authorDesc,authorId);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "user/user/4";
    }







    @RequestMapping("/blogCreates")
    public String blogCreates(Model model,
                             @RequestParam("coverImage")  MultipartFile[] coverImage,
                             @RequestParam("Image1")  MultipartFile[] Image1,
                             @RequestParam("Image2")  MultipartFile[] Image2,
                             @RequestParam("authorImage")  MultipartFile[] authorImage,
                             @RequestParam("title") String title,
                             @RequestParam("des1") String des1,
                             @RequestParam("des2") String des2,
                             @RequestParam("authorName") String authorName,
                             @RequestParam("authorDesc") String authorDesc,
                             @RequestParam("authorId") String authorId

    )
    {

        StringBuilder fileNamec= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : coverImage) {

            Path fileNameAndPath = Paths.get(uploadBlogsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNamec.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String cimg = fileNamec.toString();


        StringBuilder fileName= new StringBuilder();
        for (MultipartFile file : Image1) {

            Path fileNameAndPath = Paths.get(uploadBlogsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileName.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String img1 = fileName.toString();



        StringBuilder fileNam= new StringBuilder();
        for (MultipartFile file : Image2) {

            Path fileNameAndPath = Paths.get(uploadBlogsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String img2 = fileNam.toString();

        StringBuilder fileNa= new StringBuilder();
        for (MultipartFile file : authorImage) {

            Path fileNameAndPath = Paths.get(uploadBlogsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileNa.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String authimg = fileNa.toString();
        blogsService.createBlog(title,cimg,img1,img2,authimg,des1,des2,authorName,authorDesc,authorId);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);
        return "admin/blog";
    }












    @RequestMapping("/edit_course")
    public String edit_course(Model model,

                                @RequestParam("id") String id)

    {






        List<courseDTO> courseList = courseService.getAllcourses();
        List<resourceDTO> resourceList = resourceService.getAllResources();
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        List<resourcefilesDTO> fileList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        model.addAttribute("rcList", rcList);
        model.addAttribute("courseList", courseList);
        model.addAttribute("fileList", fileList);
        model.addAttribute("id", id);
        return "admin/editcourse";
    }







    @RequestMapping("/editcs")
    public String editcs(Model model,
                                @RequestParam("file")  MultipartFile[] image,
                                @RequestParam("title") String title,
                         @RequestParam("id") Long id,
                                @RequestParam("category") String category,
                                @RequestParam("amount") String amount,
                                @RequestParam("about") String about,
                                @RequestParam("start") String start,
                                @RequestParam("end") String end,


                                @RequestParam("resource") String resource[],
                                @RequestParam("keyword") String keyword[]
    )
    {

        List<courseDTO> courselists = courseService.getAllValidCourses(title);
        boolean ans1 = courselists.isEmpty();


        StringBuilder fileName= new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileName.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String res_img = fileName.toString();
        LocalDate dateBefore = LocalDate.parse(start);
        LocalDate dateAfter = LocalDate.parse(end);
        long noOfDaysBetween = ChronoUnit.DAYS.between(dateBefore, dateAfter);
        String days=String.valueOf(noOfDaysBetween);
        courseService.edit(id,title,category,amount,about,res_img,start,end,days);
        String keywordtype="course";
        keywordService.createKeyword(title,keyword,keywordtype);
        resourcesincourseService.createResource(title,resource);
        List<courseDTO> courseList = courseService.getAllcourses();
        List<resourceDTO> resourceList = resourceService.getAllResources();
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        List<resourcefilesDTO> fileList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        model.addAttribute("rcList", rcList);
        model.addAttribute("courseList", courseList);
        model.addAttribute("fileList", fileList);
        return "admin/course";
    }










    @RequestMapping("/create_course")
   public String create_course(Model model,
                         @RequestParam("file")  MultipartFile[] image,
                         @RequestParam("title") String title,
                         @RequestParam("category") String category,
                         @RequestParam("amount") String amount,
                         @RequestParam("about") String about,
                               @RequestParam("start") String start,
                               @RequestParam("end") String end,
                               @RequestParam("skills") String skills[],

                         @RequestParam("resource") String resource[],
                         @RequestParam("keyword") String keyword[]
   )
   {

       List<courseDTO> courselists = courseService.getAllValidCourses(title);
       boolean ans1 = courselists.isEmpty();
       if (ans1 == false){
           List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();

           model.addAttribute("resourcefilesList", resourcefilesList);
           List<resourceDTO> resourceList = resourceService.getAllResources();

           model.addAttribute("resourceList", resourceList);
           model.addAttribute("warn", "Course Name Already taken");
           List<courseDTO> courseList = courseService.getAllcourses();
           model.addAttribute("courseList", courseList);
           return "admin/course";
       }

       StringBuilder fileName= new StringBuilder();
       Random rand = new Random();
       int rand_int1 = rand.nextInt(1000);
       int rand_int2 = rand.nextInt(1500);
       for (MultipartFile file : image) {

           Path fileNameAndPath = Paths.get(uploadDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
           fileName.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
           try {
               Files.write(fileNameAndPath, file.getBytes());
           } catch (IOException e) {
               e.printStackTrace();
           }
       }

       String res_img = fileName.toString();

       LocalDate dateBefore = LocalDate.parse(start);
       LocalDate dateAfter = LocalDate.parse(end);
       long noOfDaysBetween = ChronoUnit.DAYS.between(dateBefore, dateAfter);
       String days=String.valueOf(noOfDaysBetween);

       DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
       LocalDateTime now = LocalDateTime.now();
       String date=dtf.format(now);
       courseService.createCourse(title,category,amount,about,res_img,start,end,skills,days,date);
       String keywordtype="course";
       keywordService.createKeyword(title,keyword,keywordtype);
       resourcesincourseService.createResource(title,resource);
       List<courseDTO> courseList = courseService.getAllcourses();
       List<resourceDTO> resourceList = resourceService.getAllResources();
       List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
       List<resourcefilesDTO> fileList = resourcefilesService.getAllfiles();
       model.addAttribute("resourceList", resourceList);
       model.addAttribute("rcList", rcList);
       model.addAttribute("courseList", courseList);
       model.addAttribute("fileList", fileList);
       return "admin/course";
   }



    @RequestMapping("/coursedetail")
    public String coursedetail(Model model,

                                @RequestParam("coursename") String coursename


    )
    {
        List<courseDTO> coursedetail = courseService.getAllValidCourses(coursename);
        model.addAttribute("coursedetail", coursedetail);
        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<instructorDTO> instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<facultyDTO> facList = facultyService.getAllfaculty();
        model.addAttribute("facList", facList);
        return "user/course/course3";
    }






    @RequestMapping("/resourcedetail")
    public String resourcedetail(Model model,

                               @RequestParam("resourcename") String resourcename


    )
    {
        List<resourceDTO> resourcedetail = resourceService.getAllValidResources(resourcename);
        model.addAttribute("resourcedetail", resourcedetail);
        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        model.addAttribute("rn", resourcename);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<instructorDTO> instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<facultyDTO> facList = facultyService.getAllfaculty();
        model.addAttribute("facList", facList);
        List<courseDTO> courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        return "user/resource/resource1";
    }




    @RequestMapping("/carts")
    public String cart(Model model,
                @RequestParam("course") String course,
                       @RequestParam("type") String type,
                       @RequestParam("image") String image,
                       @RequestParam("fee") String fee,
                       @RequestParam("user") String user,
                       @RequestParam("category") String category




    ) {
        cartService.createCart(course,type,image,user,fee,category);

        List<courseDTO> coursedetail = courseService.getAllValidCourses(course);
        model.addAttribute("coursedetail", coursedetail);
        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<courseDTO> courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<instructorDTO> instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<facultyDTO> facList = facultyService.getAllfaculty();
        model.addAttribute("facList", facList);
        return "user/course/course3";
    }


    @RequestMapping("/cart")
    public String cart(Model model




    ) {

        List<courseDTO> coursedetail = courseService.getAllcourses();
        model.addAttribute("coursedetail", coursedetail);
        List<cartDTO> cartList = cartService.getAllcarts();
        model.addAttribute("cartList", cartList);

        return "user/cart/cart";
    }



    @RequestMapping("/rcdetail")
    public String rcdetail(Model model,

                               @RequestParam("course") String course,
                           @RequestParam("resource") String resource


    )
    {
        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        List<courseDTO> coursedetail = courseService.getAllValidCourses(course);
        model.addAttribute("coursedetail", coursedetail);
        model.addAttribute("rs", resource);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<courseDTO> courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<instructorDTO> instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<facultyDTO> facList = facultyService.getAllfaculty();
        model.addAttribute("facList", facList);
        return "user/course/course4";
    }




    @RequestMapping("/rcdetails")
    public String rcdetails(Model model,

                           @RequestParam("course") String course,
                           @RequestParam("resource") String resource


    )
    {
        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        List<courseDTO> coursedetail = courseService.getAllValidCourses(course);
        model.addAttribute("coursedetail", coursedetail);
        model.addAttribute("rs", resource);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<userCoursesDTO> userCoursesList = userCoursesService.getAlluserCourses();
        model.addAttribute("userCoursesList", userCoursesList);
        List<courseDTO > courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<resourceDTO > resourseList = resourceService.getAllResources();
        model.addAttribute("resourseList", resourseList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        model.addAttribute("userList", userList);
        List<instructorDTO > instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<facultyDTO > facList = facultyService.getAllfaculty();
        model.addAttribute("facList", facList);
        return "user/user/5";
    }







    @RequestMapping("/create_resource")

    public String imageup(Model model,
    @RequestParam("image")  MultipartFile[] image,
    @RequestParam("file")  MultipartFile[] files,
    @RequestParam("title") String title,
    @RequestParam("category") String category,
    @RequestParam("amount") String amount,
    @RequestParam("about_resource") String about,
    @RequestParam("filetype") String filetype,
     @RequestParam("tit") String tit,
     @RequestParam("tit1") String tit1,
             @RequestParam("tit2") String tit2,
                          @RequestParam("tit3") String tit3,

                          @RequestParam("categ") String cate,
                          @RequestParam("categ1") String cate1,
                          @RequestParam("categ2") String cate2,
                          @RequestParam("categ3") String cate3,

                          @RequestParam("instructor") String instructor[],
                          @RequestParam("keyword") String keyword[],
    @RequestParam("file1")  MultipartFile[] files1,
    @RequestParam("filetype1") String filetype1,
    @RequestParam("file2")  MultipartFile[] files2,
    @RequestParam("filetype2") String filetype2,
      @RequestParam("file3")  MultipartFile[] files3,
     @RequestParam("filetype3") String filetype3
    )
    {
        List<resourceDTO> resourceLists = resourceService.getAllValidResources(title);
        boolean ans = resourceLists.isEmpty();
        if (ans == false){
            List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();
            List<facultyDTO> facList = facultyService.getAllfaculty();

            model.addAttribute("facList", facList);

            model.addAttribute("resourcefilesList", resourcefilesList);
            List<resourceDTO> resourceList = resourceService.getAllResources();

            model.addAttribute("resourceList", resourceList);
            model.addAttribute("warn", "Resource Name Already taken");
            return "admin/resources";
            }

        if(files1!=null){
            StringBuilder fileNamc = new StringBuilder();
            StringBuilder fileNam = new StringBuilder();
            Random rand = new Random();
            int rand_int1 = rand.nextInt(1000);
            int rand_int2 = rand.nextInt(1500);
            for (MultipartFile file : files1) {
                if (filetype1.equals("video")) {
                    Path fileNameAndPath = Paths.get(uploadVideoDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNamc.append( file.getOriginalFilename());
                    fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype1.equals("word")) {
                    Path fileNameAndPath = Paths.get(uploadWordsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNamc.append( file.getOriginalFilename());
                    fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype1.equals("ppt")) {
                    Path fileNameAndPath = Paths.get(uploadPptDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNamc.append( file.getOriginalFilename());
                    fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

                if (filetype1.equals("pdf")) {
                    Path fileNameAndPath = Paths.get(uploadPdfDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNamc.append( file.getOriginalFilename());
                    fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
            String file1img = fileNam.toString();
            String file1imgc = fileNamc.toString();
            if (!file1imgc.equals("")) {
                resourcefilesService.createResourceFiles(title, filetype1, file1img,tit1,cate1);
            }

        }





        if(!files2.equals(null)){

            StringBuilder fileNa = new StringBuilder();
            StringBuilder fileNac = new StringBuilder();
            Random rand = new Random();
            int rand_int1 = rand.nextInt(1000);
            int rand_int2 = rand.nextInt(1500);
            for (MultipartFile file : files2) {

                    if (filetype2.equals("video")) {
                        Path fileNameAndPath = Paths.get(uploadVideoDirectory, rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename());
                        fileNac.append( file.getOriginalFilename());
                        fileNa.append(rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename() + " ");
                        try {
                            Files.write(fileNameAndPath, file.getBytes());
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }


                    if (filetype2.equals("word")) {
                        Path fileNameAndPath = Paths.get(uploadWordsDirectory, rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename());
                        fileNac.append( file.getOriginalFilename());
                        fileNa.append(rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename() + " ");
                        try {
                            Files.write(fileNameAndPath, file.getBytes());
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }


                    if (filetype2.equals("ppt")) {
                        Path fileNameAndPath = Paths.get(uploadPptDirectory, rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename());
                        fileNac.append( file.getOriginalFilename());
                        fileNa.append(rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename() + " ");
                        try {
                            Files.write(fileNameAndPath, file.getBytes());
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }

                    if (filetype2.equals("pdf")) {
                        Path fileNameAndPath = Paths.get(uploadPdfDirectory, rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename());
                        fileNac.append( file.getOriginalFilename());
                        fileNa.append(rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename() + " ");
                        try {
                            Files.write(fileNameAndPath, file.getBytes());
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            String file2imgc = fileNac.toString();
                String file2img = fileNa.toString();
                if (!file2imgc.equals("")) {
                    resourcefilesService.createResourceFiles(title, filetype2, file2img,tit2,cate2);
                }


        }






        if(files3!=null){
            StringBuilder fileNc = new StringBuilder();
            StringBuilder fileN = new StringBuilder();
            Random rand = new Random();
            int rand_int1 = rand.nextInt(1000);
            int rand_int2 = rand.nextInt(1500);
            for (MultipartFile file : files3) {
                if (filetype3.equals("video")) {
                    Path fileNameAndPath = Paths.get(uploadVideoDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                    fileN.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype3.equals("word")) {
                    Path fileNameAndPath = Paths.get(uploadWordsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNc.append( file.getOriginalFilename());
                    fileN.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype3.equals("ppt")) {
                    Path fileNameAndPath = Paths.get(uploadPptDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNc.append( file.getOriginalFilename());
                    fileN.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

                if (filetype3.equals("pdf")) {
                    Path fileNameAndPath = Paths.get(uploadPdfDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNc.append( file.getOriginalFilename());
                    fileN.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
            String file3img = fileN.toString();
            String file3imgc = fileNc.toString();
            if (!file3imgc.equals("")) {
                resourcefilesService.createResourceFiles(title, filetype3, file3img,tit3,cate3);
            }
        }






        StringBuilder fileNames = new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : files) {
            if (filetype.equals("video")) {
                Path fileNameAndPath = Paths.get(uploadVideoDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                fileNames.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                try {
                    Files.write(fileNameAndPath, file.getBytes());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        for (MultipartFile file : files) {
        if (filetype.equals("ppt")) {
            Path fileNameAndPath = Paths.get(uploadPptDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

            fileNames.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }



        for (MultipartFile file : files) {
            if (filetype.equals("pdf")) {
                Path fileNameAndPath = Paths.get(uploadPdfDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                fileNames.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                try {
                    Files.write(fileNameAndPath, file.getBytes());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }


        for (MultipartFile file : files) {
            if (filetype.equals("word")) {
                Path fileNameAndPath = Paths.get(uploadWordsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                fileNames.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                try {
                    Files.write(fileNameAndPath, file.getBytes());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        String res_imgs = fileNames.toString();

        StringBuilder fileName= new StringBuilder();

        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileName.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String res_img = fileName.toString();

String keywordtype="resource";
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String date=dtf.format(now);
        resourceService.createResource(title,category,amount,about,res_img,date);
        resourcefilesService.createResourceFiles(title,filetype,res_imgs,tit,cate);
        keywordService.createKeyword(title,keyword,keywordtype);
        instructorService.createResource(instructor,title);
        List<facultyDTO> facList = facultyService.getAllfaculty();

        model.addAttribute("facList", facList);

        List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();

        model.addAttribute("resourcefilesList", resourcefilesList);
        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);

        model.addAttribute("msg", "Successfully uploaded files "+title+category+amount+about);
        return "admin/resources";
    }













    @RequestMapping("/edit_resource")

    public String edit_resource(Model model,
                          @RequestParam("image")  MultipartFile[] image,
                          @RequestParam("file")  MultipartFile[] files,
                          @RequestParam("title") String title,
                                @RequestParam("ide") String id,
                          @RequestParam("category") String category,
                          @RequestParam("amount") String amount,
                                @RequestParam("tit") String tit,
                                @RequestParam("tit1") String tit1,
                                @RequestParam("tit2") String tit2,
                                @RequestParam("tit3") String tit3,

                                @RequestParam("categ") String cate,
                                @RequestParam("categ1") String cate1,
                                @RequestParam("categ2") String cate2,
                                @RequestParam("categ3") String cate3,

                                @RequestParam("about_resource") String about,
                          @RequestParam("filetype") String filetype,
                          @RequestParam("keyword") String keyword[],
                          @RequestParam("file1")  MultipartFile[] files1,
                          @RequestParam("filetype1") String filetype1,
                          @RequestParam("file2")  MultipartFile[] files2,
                          @RequestParam("filetype2") String filetype2,
                          @RequestParam("file3")  MultipartFile[] files3,
                          @RequestParam("filetype3") String filetype3
    )
    {
        List<resourceDTO> resourceLists = resourceService.getAllValidResources(title);
        boolean ans = resourceLists.isEmpty();

        if(files1!=null){
            StringBuilder fileNamc = new StringBuilder();
            StringBuilder fileNam = new StringBuilder();
            Random rand = new Random();
            int rand_int1 = rand.nextInt(1000);
            int rand_int2 = rand.nextInt(1500);
            for (MultipartFile file : files1) {
                if (filetype1.equals("video")) {
                    Path fileNameAndPath = Paths.get(uploadVideoDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNamc.append( file.getOriginalFilename());
                    fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype1.equals("word")) {
                    Path fileNameAndPath = Paths.get(uploadWordsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNamc.append( file.getOriginalFilename());
                    fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype1.equals("ppt")) {
                    Path fileNameAndPath = Paths.get(uploadPptDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNamc.append( file.getOriginalFilename());
                    fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

                if (filetype1.equals("pdf")) {
                    Path fileNameAndPath = Paths.get(uploadPdfDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNamc.append( file.getOriginalFilename());
                    fileNam.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
            String file1img = fileNam.toString();
            String file1imgc = fileNamc.toString();
            if (!file1imgc.equals("")) {
                resourcefilesService.createResourceFiles(title, filetype1, file1img,tit1,cate1);
            }

        }





        if(!files2.equals(null)){

            StringBuilder fileNa = new StringBuilder();
            StringBuilder fileNac = new StringBuilder();
            Random rand = new Random();
            int rand_int1 = rand.nextInt(1000);
            int rand_int2 = rand.nextInt(1500);
            for (MultipartFile file : files2) {

                if (filetype2.equals("video")) {
                    Path fileNameAndPath = Paths.get(uploadVideoDirectory, rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename());
                    fileNac.append( file.getOriginalFilename());
                    fileNa.append(rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype2.equals("word")) {
                    Path fileNameAndPath = Paths.get(uploadWordsDirectory, rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename());
                    fileNac.append( file.getOriginalFilename());
                    fileNa.append(rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype2.equals("ppt")) {
                    Path fileNameAndPath = Paths.get(uploadPptDirectory, rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename());
                    fileNac.append( file.getOriginalFilename());
                    fileNa.append(rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

                if (filetype2.equals("pdf")) {
                    Path fileNameAndPath = Paths.get(uploadPdfDirectory, rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename());
                    fileNac.append( file.getOriginalFilename());
                    fileNa.append(rand_int1 + "RESOURCE" + rand_int2 + file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
            String file2imgc = fileNac.toString();
            String file2img = fileNa.toString();
            if (!file2imgc.equals("")) {
                resourcefilesService.createResourceFiles(title, filetype2, file2img,tit2,cate2);
            }


        }






        if(files3!=null){
            StringBuilder fileNc = new StringBuilder();
            StringBuilder fileN = new StringBuilder();
            Random rand = new Random();
            int rand_int1 = rand.nextInt(1000);
            int rand_int2 = rand.nextInt(1500);
            for (MultipartFile file : files3) {
                if (filetype3.equals("video")) {
                    Path fileNameAndPath = Paths.get(uploadVideoDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                    fileN.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype3.equals("word")) {
                    Path fileNameAndPath = Paths.get(uploadWordsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNc.append( file.getOriginalFilename());
                    fileN.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }


                if (filetype3.equals("ppt")) {
                    Path fileNameAndPath = Paths.get(uploadPptDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNc.append( file.getOriginalFilename());
                    fileN.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

                if (filetype3.equals("pdf")) {
                    Path fileNameAndPath = Paths.get(uploadPdfDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
                    fileNc.append( file.getOriginalFilename());
                    fileN.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                    try {
                        Files.write(fileNameAndPath, file.getBytes());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
            String file3img = fileN.toString();
            String file3imgc = fileNc.toString();
            if (!file3imgc.equals("")) {
                resourcefilesService.createResourceFiles(title, filetype3, file3img,tit3,cate3);
            }
        }






        StringBuilder fileNames = new StringBuilder();
        Random rand = new Random();
        int rand_int1 = rand.nextInt(1000);
        int rand_int2 = rand.nextInt(1500);
        for (MultipartFile file : files) {
            if (filetype.equals("video")) {
                Path fileNameAndPath = Paths.get(uploadVideoDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                fileNames.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                try {
                    Files.write(fileNameAndPath, file.getBytes());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        for (MultipartFile file : files) {
            if (filetype.equals("ppt")) {
                Path fileNameAndPath = Paths.get(uploadPptDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                fileNames.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                try {
                    Files.write(fileNameAndPath, file.getBytes());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }



        for (MultipartFile file : files) {
            if (filetype.equals("pdf")) {
                Path fileNameAndPath = Paths.get(uploadPdfDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                fileNames.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                try {
                    Files.write(fileNameAndPath, file.getBytes());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }


        for (MultipartFile file : files) {
            if (filetype.equals("word")) {
                Path fileNameAndPath = Paths.get(uploadWordsDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());

                fileNames.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename() + " ");
                try {
                    Files.write(fileNameAndPath, file.getBytes());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        String res_imgs = fileNames.toString();

        StringBuilder fileName= new StringBuilder();

        for (MultipartFile file : image) {

            Path fileNameAndPath = Paths.get(uploadDirectory, rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            fileName.append(rand_int1+"RESOURCE"+rand_int2+file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String res_img = fileName.toString();

        String keywordtype="resource";
       resourceService.editResource(title,category,amount,about,res_img,Long.parseLong(id));
        resourcefilesService.createResourceFiles(title,filetype,res_imgs,tit,cate);
        keywordService.createKeyword(title,keyword,keywordtype);
        List<facultyDTO> facList = facultyService.getAllfaculty();

        model.addAttribute("facList", facList);


        List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();

        model.addAttribute("resourcefilesList", resourcefilesList);
        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);

        model.addAttribute("msg", "Successfully uploaded files "+title+category+amount+about);
        return "admin/resources";
    }













    @RequestMapping("/editResources")
    public String editResources(Model model) {

        List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();

        model.addAttribute("resourcefilesList", resourcefilesList);
        List<resourceDTO> resourceList = resourceService.getAllResources();
        List<facultyDTO> facList = facultyService.getAllfaculty();

        model.addAttribute("facList", facList);

        model.addAttribute("resourceList", resourceList);
        return "admin/editResources";
    }
    @RequestMapping("/slider")
    public String slider(Model model) {
        List<sliderDTO> sliderList = sliderService.getAllSlider();

        model.addAttribute("sliderList", sliderList);
        return "admin/slider";
    }
    @RequestMapping("/admincourse")
    public String admincourse(Model model) {
        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);
        List<courseDTO> courseList = courseService.getAllcourses();

        model.addAttribute("courseList", courseList);
        return "admin/course";
    }


    @RequestMapping("/assessment")
    public String assessment(Model model) {
        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);
        List<courseDTO> courseList = courseService.getAllcourses();

        model.addAttribute("courseList", courseList);
        List<assessmentDTO> asList = assessmentService.getAll();

        model.addAttribute("asList", asList);
        List<assessmentfileDTO> assList = assessmentfileService.getAll();

        model.addAttribute("assList", assList);
        return "admin/assesment";
    }

    @RequestMapping("/createAssesments")
    public String createAssesments(Model model,  @RequestParam("id") String id,@RequestParam("name") String name) {
        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);
        List<courseDTO> courseList = courseService.getAllcourses();

        model.addAttribute("courseList", courseList);
        return "admin/assessment1";
    }
    @RequestMapping("/adminblog")
    public String adminblog(Model model) {
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);
        return "admin/blog";
    }
    @RequestMapping("/adminfaculty")
    public String adminfaculty(Model model) {
        List<facultyDTO> facList = facultyService.getAllfaculty();

        model.addAttribute("facList", facList);

        return "admin/faculty";
    }
    @RequestMapping("/access_control")
    public String access_control(Model model) {
        List<adminDTO> adminList = adminService.getAlladmin();
        model.addAttribute("admList", adminList);
        return "admin/access_control";
    }

    @RequestMapping("/userlogout")
    public String userlogout() {

        return "user/logout";
    }
    @RequestMapping("/message_center")
    public String message_center() {

        return "admin/message_center";
    }
    @RequestMapping("/e_certificate")
    public String e_certificate() {

        return "admin/e_certificate";
    }
    @RequestMapping("/logout")
    public String logout() {

        return "admin/logout";
    }

    @RequestMapping("/mail")
    public String mail() {

        return "admin/mail";
    }
    @RequestMapping("/adminresources")
    public String adminresources(Model model) {

        List<resourceDTO> resourceList = resourceService.getAllResources();

        model.addAttribute("resourceList", resourceList);
        List<facultyDTO> facList = facultyService.getAllfaculty();

        model.addAttribute("facList", facList);

        List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();

        model.addAttribute("resourcefilesList", resourcefilesList);
        return "admin/resources";
    }
    @RequestMapping("/adminsummit")
    public String adminsummit(Model model) {
        List<summitDTO> summitList = summitService.getAllsummit();

        model.addAttribute("summitList", summitList);
        return "admin/summit";
    }
    @RequestMapping("/deletesummit")
    public String deletesummit(Model model,@RequestParam("id") Long id) {

summitService.delete(id);
        List<summitDTO> summitList = summitService.getAllsummit();

        model.addAttribute("summitList", summitList);
        return "admin/summit";
    }



    @RequestMapping("/resources")
    public String resources(Model model) {
        List<resourceDTO> resourceList = resourceService.getAllResources();

        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<courseDTO> courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime yesterday = LocalDateTime.now().minus(1, ChronoUnit.DAYS);
        String date=dtf.format(now);
        String yes=dtf.format(yesterday);
        model.addAttribute("today", date);
        model.addAttribute("yesterday", yes);

        model.addAttribute("resourceList", resourceList);
        List<resourcefilesDTO> resourcefilesList = resourcefilesService.getAllfiles();

        model.addAttribute("resourcefilesList", resourcefilesList);
        return "user/resource/resources";
    }

    @RequestMapping("/course")
    public String course(Model model) {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime yesterday = LocalDateTime.now().minus(1, ChronoUnit.DAYS);
        String date=dtf.format(now);
        String yes=dtf.format(yesterday);
        model.addAttribute("today", date);
        model.addAttribute("yesterday", yes);
        List<courseDTO> courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        return "user/course/coursehome";
    }

    @RequestMapping("/course3")
    public String course3(Model model) {
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        return "user/course/course3";
    }

    @RequestMapping("/loginpage")
    public String loginpage() {

        return "user/log in";
    }

    @RequestMapping("/signup")
    public String signup() {

        return "user/signup";
    }

    @RequestMapping("/faculty")
    public String faculty(Model model) {
        List<facultyDTO> facList = facultyService.getAllfaculty();

        model.addAttribute("facList", facList);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        return "user/faculty";
    }

    @RequestMapping("/blog")
    public String blog(Model model) {
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);

        return "user/blog/blog6";
    }

    @RequestMapping("/blogtop")
    public String blogtop(Model model, @RequestParam("id") String bid) {
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);
        model.addAttribute("bid", bid);
        return "user/blog/blog8";
    }
    @RequestMapping("/blog7" )
    public String blog7(Model model, @RequestParam("blogId") Long bid,@RequestParam("view") int view) {

        int views=view+1;
        String count=String.valueOf(views);
        blogsService.addview(count,bid);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);
        model.addAttribute("id", bid);
        return "user/blog/blog7";
    }

    @RequestMapping("/enroll" )
    public String enroll(Model model,
     @RequestParam("cartId") String cartId,
    @RequestParam("productName") String productName,
    @RequestParam("type") String type,
    @RequestParam("category") String category,
    @RequestParam("image") String image,
    @RequestParam("user") String user,
    @RequestParam("fee") String fee,
    @RequestParam("date") String date,
     @RequestParam("orderId") String orderId
    )



    {
        model.addAttribute("cartId", cartId);
        model.addAttribute("productName", productName);
        model.addAttribute("type", type);
        model.addAttribute("category", category);
        model.addAttribute("image", image);
        model.addAttribute("user", user);
        model.addAttribute("fee", fee);
        model.addAttribute("date", date);
        model.addAttribute("orderId", orderId);
        int amount = Integer.parseInt(fee);
        int gst=(amount*8)/100;
        int total=amount+gst;
        String tot=String.valueOf(total);
        model.addAttribute("total", tot);



        return "user/cart/enroll";
    }




    @RequestMapping("/purchase" )
    public String purchase(Model model,
                         @RequestParam("cartId") String cartId[],
                         @RequestParam("productName") String[] productName,
                         @RequestParam("type") String type[],
                         @RequestParam("category") String[] category,
                         @RequestParam("image") String[] image,
                         @RequestParam("user") String user,
                         @RequestParam("fee") String[] fee,
                         @RequestParam("date") String date,
                           @RequestParam("total") String total,
                         @RequestParam("orderId") String orderId
    )



    {


       ordersService.createOrder(productName,type,category,image,user,fee,orderId,date);
       cartService.makePurchased(cartId);
      // userCoursesService.createUserCourse(productName,type,category,image,user,date);
userCoursesService.createUserCourse(productName,type,category,image,user,date);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);

        List<userCoursesDTO> userCoursesList = userCoursesService.getAlluserCourses();
        model.addAttribute("userCoursesList", userCoursesList);
        List<courseDTO > courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<resourceDTO > resourseList = resourceService.getAllResources();
        model.addAttribute("resourseList", resourseList);
        model.addAttribute("cartId", cartId);
        model.addAttribute("productName", productName);
        model.addAttribute("type", type);
        model.addAttribute("category", category);
        model.addAttribute("image", image);
        model.addAttribute("user", user);
        model.addAttribute("fee", fee);
        model.addAttribute("date", date);
        model.addAttribute("total", total);
        model.addAttribute("orderId", orderId);


        return "user/cart/succes";
    }


    @RequestMapping("/viewCourse")
    public String viewCourse(Model model,@RequestParam("name") String name) {
        List<courseDTO> coursedetail = courseService.getAllValidCourses(name);
        model.addAttribute("coursedetail", coursedetail);
        model.addAttribute("cn", name);
        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<userCoursesDTO> userCoursesList = userCoursesService.getAlluserCourses();
        model.addAttribute("userCoursesList", userCoursesList);
        List<courseDTO > courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<resourceDTO > resourseList = resourceService.getAllResources();
        model.addAttribute("resourseList", resourseList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        List<instructorDTO > instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<facultyDTO > facList = facultyService.getAllfaculty();
        model.addAttribute("facList", facList);
        return "user/user/2";
    }


    @RequestMapping("/viewResource")
    public String viewResource(Model model,@RequestParam("name") String name) {
        List<courseDTO> coursedetail = courseService.getAllValidCourses(name);
        model.addAttribute("coursedetail", coursedetail);

        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<userCoursesDTO> userCoursesList = userCoursesService.getAlluserCourses();
        model.addAttribute("userCoursesList", userCoursesList);
        List<courseDTO > courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<resourceDTO > resourseList = resourceService.getAllResources();
        model.addAttribute("resourseList", resourseList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "user/user/2";
    }




    @RequestMapping("/viewResources")
    public String viewResources(Model model,@RequestParam("name") String name) {
        List<resourceDTO> resourcedetail = resourceService.getAllValidResources(name);
        model.addAttribute("resourcedetail", resourcedetail);
        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        model.addAttribute("cn", name);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        List<instructorDTO > instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<facultyDTO > facList = facultyService.getAllfaculty();
        model.addAttribute("facList", facList);
        List<userCoursesDTO> userCoursesList = userCoursesService.getAlluserCourses();
        model.addAttribute("userCoursesList", userCoursesList);
        List<courseDTO > courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<resourceDTO > resourseList = resourceService.getAllResources();
        model.addAttribute("resourseList", resourseList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "user/user/6";
    }


    @RequestMapping("/viewvideo")
    public String viewvideo(Model model,@RequestParam("rcname") String name,@RequestParam("cn") String cname,@RequestParam("video") String video) {
        List<courseDTO> coursedetail = courseService.getAllValidCourses(cname);
        model.addAttribute("coursedetail", coursedetail);
        model.addAttribute("cn", cname);
        List<resourceDTO> resourcedetail = resourceService.getAllValidResources(name);
        model.addAttribute("resourcedetail", resourcedetail);
        List<courseDTO> coursedetails = courseService.getAllcourses();
        model.addAttribute("coursedetails", coursedetails);
        List<resourcefilesDTO> resourceList = resourcefilesService.getAllfiles();
        model.addAttribute("resourceList", resourceList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        model.addAttribute("video", video);
        model.addAttribute("rcname", name);
        List<userCoursesDTO> userCoursesList = userCoursesService.getAlluserCourses();
        model.addAttribute("userCoursesList", userCoursesList);
        List<courseDTO > courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<resourceDTO > resourseList = resourceService.getAllResources();
        model.addAttribute("resourseList", resourseList);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        List<instructorDTO > instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<facultyDTO > facList = facultyService.getAllfaculty();
        model.addAttribute("facList", facList);
        return "user/user/3";
    }



    @RequestMapping("/summit")
    public String summit(Model model) {
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        return "user/summit/summit8";
    }

    @RequestMapping("/summit10")
    public String summit10(Model model) {
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);

        return "user/summit/summit10";
    }
    @RequestMapping("/summit11")
    public String summit11(Model model) {
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        return "user/summit/summit11";
    }

    @RequestMapping("/summit9")
    public String summit9(Model model) {
        List<sliderDTO> sliderList = sliderService.getAllSlider();
        model.addAttribute("sliderList", sliderList);
        return "user/summit/summit9";
    }
    @RequestMapping("/cartsuc")
    public String cartsuc(Model model) {
        List<courseDTO> coursedetail = courseService.getAllcourses();
        model.addAttribute("coursedetail", coursedetail);
        List<cartDTO> cartList = cartService.getAllcarts();
        model.addAttribute("cartList", cartList);
        ;
        return "user/cart/succes";
    }
    @RequestMapping("/carterror")
    public String carterror(Model model) {
        List<courseDTO> coursedetail = courseService.getAllcourses();
        model.addAttribute("coursedetail", coursedetail);
        List<cartDTO> cartList = cartService.getAllcarts();
        model.addAttribute("cartList", cartList);

        return "user/cart/error";
    }

    @RequestMapping("/deleteitem")
    public String  deleteitem(Model model, @RequestParam("id") Long id) {
        cartService.deleteitem(id);
        List<courseDTO> coursedetail = courseService.getAllcourses();
        model.addAttribute("coursedetail", coursedetail);
        List<cartDTO> cartList = cartService.getAllcarts();
        model.addAttribute("cartList", cartList);

        return  "user/cart/cart";
    }


    @RequestMapping("/delfac")
    public String  delfac(Model model, @RequestParam("id") Long id) {
        facultyService.deleteitem(id);
        List<facultyDTO> facultyList = facultyService.getAllfaculty();
        model.addAttribute("facList", facultyList);
        List<cartDTO> cartList = cartService.getAllcarts();
        model.addAttribute("cartList", cartList);

        return  "admin/faculty";
    }




    @RequestMapping("/checkcart")
    public String  checkcart(Model model, @RequestParam("id") Long id) {

            cartService.makeChecked(id);

        List<courseDTO> coursedetail = courseService.getAllcourses();
        model.addAttribute("coursedetail", coursedetail);
        List<cartDTO> cartList = cartService.getAllcarts();
        model.addAttribute("cartList", cartList);

        return  "user/cart/cart";
    }


    @RequestMapping("/checkcarts")
    public String  checkcarts(Model model, @RequestParam("id") Long id) {

        cartService.makeChecked2(id);

        List<courseDTO> coursedetail = courseService.getAllcourses();
        model.addAttribute("coursedetail", coursedetail);
        List<cartDTO> cartList = cartService.getAllcarts();
        model.addAttribute("cartList", cartList);

        return  "user/cart/cart";
    }


    @RequestMapping("/user")
    public String user(Model model) {
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);

        List<userCoursesDTO> userCoursesList = userCoursesService.getAlluserCourses();
        model.addAttribute("userCoursesList", userCoursesList);
        List<courseDTO > courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        List<resourceincourseDTO> rcList = resourcesincourseService.getAllResourcesInCourse();
        model.addAttribute("rcList", rcList);
        List<resourceDTO > resourseList = resourceService.getAllResources();
        model.addAttribute("resourseList", resourseList);
        List<instructorDTO > instructorList = instructorService.getAllData();
        model.addAttribute("instructorList", instructorList);
        List<assessmentDTO > assessList = assessmentService.getAll();
        model.addAttribute("assessList", assessList);
        return "user/user/index";
    }

    @RequestMapping("/writeblog")
    public String writeblog(Model model) {
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);
        return "user/user/4";
    }


    @RequestMapping("/sam1")
    public String sam1(Model model) {

        return "user/sam";
    }

    @RequestMapping("/sam")
    public ModelAndView sam(Model model, @RequestParam("url") String url) {


        return new ModelAndView("user/ :" + url);
    }



    @RequestMapping("/deleteblog")
    public String deleteblog(Model model,@RequestParam("id") Long id) {

blogsService.delblog(id);
        List<userDTO> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        List<blogsDTO> blogList = blogsService.getAllblogs();
        model.addAttribute("blogList", blogList);
        return "user/user/4";
    }


    @RequestMapping("/viewresource")
    public String viewresource(Model model,@RequestParam("id") Long id) {

resources rs= resourceService.findByid(id);
        model.addAttribute("name", rs.getResource_name());
        model.addAttribute("about", rs.getAbout_resourse());
        model.addAttribute("amount", rs.getAmount());
        model.addAttribute("category", rs.getCategory());
        model.addAttribute("image", rs.getImage());
        return "admin/resource_view";
    }

    @RequestMapping("/viewcourse")
    public String viewcourse(Model model,@RequestParam("id") Long id) {

        course rs= courseService.findByid(id);
        model.addAttribute("name", rs.getCourse_name());
        model.addAttribute("about", rs.getAbout_course());
        model.addAttribute("amount", rs.getAmount());
        model.addAttribute("category", rs.getCategory());
        model.addAttribute("image", rs.getImage());
        model.addAttribute("start", rs.getStart());
        model.addAttribute("end", rs.getEnd());
        model.addAttribute("skill1", rs.getSkill1());
        model.addAttribute("skill2", rs.getSkill2());
        model.addAttribute("skill3", rs.getSkill3());
        model.addAttribute("skill4", rs.getSkill4());
        return "admin/course_view";
    }



    @RequestMapping("/viewblogs")
    public String viewblogs(Model model,@RequestParam("id") Long id) {
blogs b=blogsService.findbyid(id);
        model.addAttribute("about1", b.getAbout1());
        model.addAttribute("about2", b.getAbout2());
        model.addAttribute("author", b.getAuthor());
        model.addAttribute("authdet", b.getAuthor_details());
        model.addAttribute("authimg", b.getAuthor_image());
        model.addAttribute("img1", b.getImage1());
        model.addAttribute("img2", b.getImage2());
        model.addAttribute("cover", b.getCover());
        model.addAttribute("title", b.getTitle() );
        return "admin/blog_view";
    }
    @RequestMapping("/viewfaculty")
    public String viewfaculty(Model model,@RequestParam("id") Long id) {
     faculty fa=facultyService.findByid(id);
        model.addAttribute("fname", fa.getFirstname());
        model.addAttribute("lname", fa.getLastname());
        model.addAttribute("image", fa.getImage());
        model.addAttribute("about", fa.getAbout());
        model.addAttribute("title", fa.getTitle());
        return "admin/faculty_view";
    }


    @RequestMapping("/test")
    public String test(Model model) {
        List<courseDTO> courseList = courseService.getAllcourses();
        model.addAttribute("courseList", courseList);
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String date=dtf.format(now);
        model.addAttribute("today", date);
        return "user/sam";
    }
}