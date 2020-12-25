package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.summit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface summitRepository extends JpaRepository<summit,Long> {

}
