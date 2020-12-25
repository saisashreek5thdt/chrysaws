package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface courseRepository extends JpaRepository<course,Long> {
public course findByid(Long id);
    public List findBycoursename(String title);
}
