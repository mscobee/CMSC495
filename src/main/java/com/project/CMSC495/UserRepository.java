package com.project.CMSC495;

import org.springframework.data.repository.CrudRepository;
import com.project.CMSC495.User;


public interface UserRepository extends CrudRepository<User, Integer> {
}
