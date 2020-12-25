package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.resources;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface resourceRepository extends JpaRepository<resources,Long> {
    //
   public List findByresourcename(String title);
 public resources findByid(Long ID);
}
