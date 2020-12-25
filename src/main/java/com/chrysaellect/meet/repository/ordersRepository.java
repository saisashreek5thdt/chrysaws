package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ordersRepository extends JpaRepository<orders,Long> {
}
