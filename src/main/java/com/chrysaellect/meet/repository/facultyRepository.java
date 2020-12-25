package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.faculty;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface facultyRepository extends JpaRepository<faculty,Long> {

    public faculty findByid(Long id);
}
