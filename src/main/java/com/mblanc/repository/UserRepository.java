package com.mblanc.repository;

import java.util.List;

import javax.persistence.QueryHint;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.QueryHints;
import org.springframework.data.repository.CrudRepository;

import com.mblanc.model.User;

public interface UserRepository extends CrudRepository<User, Long>, JpaSpecificationExecutor<User> {
	
	@Query(value="select u from User u")
	@QueryHints({@QueryHint(name="org.hibernate.cacheable", value="true")})
	List<User> findAllWithCache();
	
}
