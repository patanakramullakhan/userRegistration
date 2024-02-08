package com.akram.repo;

import org.springframework.data.repository.CrudRepository;

import com.akram.entity.Users;

public interface UserRepo extends CrudRepository<Users, Integer> {

	
}
