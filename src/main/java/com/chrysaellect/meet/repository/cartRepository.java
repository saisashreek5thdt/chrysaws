package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface cartRepository extends JpaRepository<cart,Long> {
    public cart findByid(Long id);
}
