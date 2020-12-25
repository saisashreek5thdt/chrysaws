package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.blogsDTO;
import com.chrysaellect.meet.dto.courseDTO;
import com.chrysaellect.meet.model.blogs;

import java.util.List;

public interface blogsService {
    public List<blogsDTO> getAllblogs();
    public void delblog(Long id);
    public  void createBlog(String title, String coverImage, String Image1, String Image2,String authorImage ,String des1, String des2,String authorName , String authorDec,String authorId);
public void publish(Long id);
    public void disable(Long id);
    public blogs findbyid(Long id);
    public void addview(String count,Long id);
}
