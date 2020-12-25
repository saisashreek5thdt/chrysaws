package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface adminRepository extends JpaRepository<admin, Long> {
}
