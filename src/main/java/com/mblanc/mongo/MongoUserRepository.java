package com.mblanc.mongo;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.transaction.annotation.Transactional;

import com.mblanc.model.User;

@Transactional
public interface MongoUserRepository extends MongoRepository<User, String> {

}