package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.userCourses;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface userCoursesRepository extends JpaRepository<userCourses,Long> {
}
