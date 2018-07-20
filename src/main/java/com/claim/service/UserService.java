package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.claim.entity.User;
import com.claim.repository.UserRepository;

@Service
public class UserService {
		
	@Autowired
	private UserRepository userRepository;
	
	public void saveUser(User user)
	{
		userRepository.save(user);
	}
	
	public User findUser(String email)
	{
		return userRepository.getOne(email);
	}
	
	/*public User searchByFirstName(String name) {
		return userRepository.getByName(name);
	}*/
	public User findByEmailAndPassword(String email, String password)
	{
		return userRepository.findByEmailAndPassword(email, password);
	}
	
	
}
