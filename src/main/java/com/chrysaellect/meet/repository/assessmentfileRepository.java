package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.assessmentfile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface assessmentfileRepository extends JpaRepository<assessmentfile,Long> {
}
