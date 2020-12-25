package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.instructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface instructorRepository extends JpaRepository<instructor,Long> {
}
