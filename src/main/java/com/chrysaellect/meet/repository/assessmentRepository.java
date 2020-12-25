package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.assessment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface assessmentRepository extends JpaRepository<assessment,Long> {
}
