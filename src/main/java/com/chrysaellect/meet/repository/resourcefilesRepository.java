package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.resourcefiles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface resourcefilesRepository extends JpaRepository<resourcefiles, Long> {

}
