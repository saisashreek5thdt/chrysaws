package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.resourcesincourse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface resourceincourseRepository extends JpaRepository<resourcesincourse,Long> {
    public List findBycoursename(String title);
  long deleteAllByresourceid(String name);
}
