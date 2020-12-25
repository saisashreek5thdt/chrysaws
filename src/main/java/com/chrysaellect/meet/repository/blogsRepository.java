package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.blogs;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface blogsRepository extends JpaRepository<blogs,Long> {
    public blogs findByid(Long id);
}
