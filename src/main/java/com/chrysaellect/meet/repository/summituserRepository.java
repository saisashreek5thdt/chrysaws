package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.summituser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface summituserRepository extends JpaRepository<summituser,Long> {
    public summituser findByemail(String email);
}
