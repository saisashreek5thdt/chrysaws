package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.keyword;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface keywordRepository extends JpaRepository<keyword,Long> {

}
