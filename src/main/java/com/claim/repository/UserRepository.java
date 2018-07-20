package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
/*import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;*/
import org.springframework.stereotype.Repository;


import com.claim.entity.User;
@Repository
public interface UserRepository extends JpaRepository<User, String>{
	//find user with email and password to login.
		User findByEmailAndPassword(String email, String password);
		
		/*@Query ("Select U from user U where fName=:name")
		public User getByName(@Param("name") String name);*/
		
		

}
