package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.blogsDTO;
import com.chrysaellect.meet.dto.courseDTO;
import com.chrysaellect.meet.model.blogs;
import com.chrysaellect.meet.model.course;
import com.chrysaellect.meet.model.user;
import com.chrysaellect.meet.repository.blogsRepository;
import com.chrysaellect.meet.repository.courseRepository;
import com.chrysaellect.meet.service.blogsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class blogsServiceImpl implements blogsService {
    @Autowired
    private com.chrysaellect.meet.repository.blogsRepository blogsRepository;
    @Override
    public List<blogsDTO> getAllblogs() {
        List<blogs> list = blogsRepository.findAll();
        List<blogsDTO> bloglist = list.stream()
                .map(blogsDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return bloglist;
    }

    @Override
    public void delblog(Long id) {
        blogsRepository.deleteById(id);
    }

    @Override
    public void createBlog(String title, String coverImage, String Image1, String Image2, String authorImage, String des1, String des2, String authorName, String authorDec, String authorId) {
        blogs bl=convertDtoToModel(title,coverImage,Image1,Image2,authorImage,des1,des2,authorName,authorDec,authorId);
        blogsRepository.save(bl);
    }

    @Override
    public void publish(Long id) {
        blogs bl=blogsRepository.findByid(id);
        bl.setPublish("1");
blogsRepository.save(bl);
    }
    public void disable(Long id) {
        blogs bl=blogsRepository.findByid(id);
        bl.setPublish("0");
        blogsRepository.save(bl);
    }

    @Override
    public blogs findbyid(Long id) {
       blogs b= blogsRepository.findByid(id);
       return b;
    }

    @Override
    public void addview(String count,Long id) {
        blogs b= blogsRepository.findByid(id);
        b.setView(count);
        blogsRepository.save(b);
    }

    private blogs convertDtoToModel(String title, String coverImage, String Image1, String Image2, String authorImage, String des1,String des2, String authorName, String authorDec, String authorId){
        blogs bl=new blogs();
        bl.setTitle(title);
        bl.setImage1(Image1);
       bl.setImage2(Image2);
       bl.setAbout1(des1);
       bl.setAuthor_image(authorImage);
       bl.setAbout2(des2);
       bl.setCover(coverImage);
       bl.setAuthor_details(authorDec);
       bl.setAuthor(authorName);
       bl.setAuthor_id(authorId);
       bl.setPublish("0");
       bl.setView("0");
       return bl;
    }

}
