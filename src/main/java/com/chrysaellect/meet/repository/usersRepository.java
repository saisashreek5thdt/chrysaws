package com.chrysaellect.meet.repository;

import com.chrysaellect.meet.model.user;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface usersRepository extends JpaRepository <user,Long>{
 public user findByemail(String email);

}
