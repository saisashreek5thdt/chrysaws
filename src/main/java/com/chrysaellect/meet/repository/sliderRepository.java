package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.slider;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface sliderRepository extends JpaRepository<slider,Long> {
    public slider findBycategory(String category);
}
